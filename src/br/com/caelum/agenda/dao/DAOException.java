package br.com.caelum.agenda.dao;

public class DAOException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public DAOException() {
    }

    public DAOException(Exception e) {
        super(e);
    }
}
