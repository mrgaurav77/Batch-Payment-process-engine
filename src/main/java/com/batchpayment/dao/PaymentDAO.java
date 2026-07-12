package com.batchpayment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.batchpayment.model.Payment;
import com.batchpayment.util.DBConnection;

public class PaymentDAO {

    public boolean addPayment(Payment p) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO payment(student_name,account_number,ifsc,amount,status,batch_id) VALUES(?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, p.getStudentName());
            ps.setString(2, p.getAccountNumber());
            ps.setString(3, p.getIfsc());
            ps.setDouble(4, p.getAmount());
            ps.setString(5, "Pending");
            ps.setString(6, "");

            int i = ps.executeUpdate();

            if (i > 0)
                return true;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;

    }

    public List<Payment> getAllPayments() {

        List<Payment> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM payment";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Payment p = new Payment();

                p.setId(rs.getInt("id"));
                p.setStudentName(rs.getString("student_name"));
                p.setAccountNumber(rs.getString("account_number"));
                p.setIfsc(rs.getString("ifsc"));
                p.setAmount(rs.getDouble("amount"));
                p.setStatus(rs.getString("status"));
                p.setBatchId(rs.getString("batch_id"));

                list.add(p);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return list;

    }

    public boolean processBatch(String batchId) {

        try {

            Connection con = DBConnection.getConnection();

            String sql = "UPDATE payment SET status = ?, batch_id = ? WHERE status = ?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, "Processed");
            ps.setString(2, batchId);
            ps.setString(3, "Pending");

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }

    public int getTotalPayments() {

        int count = 0;

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) FROM payment");

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                count = rs.getInt(1);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return count;

    }

    public int getPendingPayments() {

        int count = 0;

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) FROM payment WHERE status='Pending'");

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                count = rs.getInt(1);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return count;

    }

    public int getProcessedPayments() {

        int count = 0;

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT COUNT(*) FROM payment WHERE status='Processed'");

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                count = rs.getInt(1);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return count;

    }

    public double getTotalAmount() {

        double amount = 0;

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement("SELECT SUM(amount) FROM payment");

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                amount = rs.getDouble(1);

            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return amount;

    }

}