package com.idb.Student;

import ExamPractise.HibernateUtil;
import java.util.LinkedList;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

// create table student("id" int primary key, "name" varchar2(25), designation varchar2(100), department varchar2(100), salary varchar2(255), address varchar2(255));
public class HibernateDao {

    private static final SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    public static int save(Student data) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            session.save(data);
            transaction.commit();
        } catch (Exception ex) {
            Logger.getLogger(HibernateDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return data.getId();
    }

    public static int edit(Student data) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            session.merge(data);
            transaction.commit();
        } catch (Exception ex) {
            Logger.getLogger(HibernateDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return data.getId();
    }

    public static List<Student> findAll() {
        List<Student> list = new LinkedList<>();
        try (Session session = sessionFactory.openSession()) {
            Query<Student> query = session.createQuery("from Student e", Student.class);
            list = query.getResultList();
        } catch (Exception ex) {
            Logger.getLogger(HibernateDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static Student getById(int id) {
        Student emp = new Student();
        try (Session session = sessionFactory.openSession()) {
            emp = session.find(Student.class, id);
        } catch (Exception ex) {
            Logger.getLogger(HibernateDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return emp;
    }

    public static int delete(int id) {
        Student emp = new Student();
        emp.setId(id);
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            session.delete(emp);
            transaction.commit();
        } catch (Exception ex) {
            Logger.getLogger(HibernateDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
