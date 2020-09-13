-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 13, 2020 at 11:12 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_book`
--

CREATE TABLE `db_book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_price` decimal(15,2) NOT NULL COMMENT 'book''s price per day',
  `book_available_date` date NOT NULL,
  `book_status` int(11) NOT NULL COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_book`
--

INSERT INTO `db_book` (`book_id`, `book_name`, `book_price`, `book_available_date`, `book_status`) VALUES
(1, 'Pikachu', '5.50', '2020-06-01', 1),
(2, 'Doremon', '7.80', '2020-06-05', 1),
(3, 'Super Mario', '15.85', '2020-04-15', 1),
(4, 'Batman', '12.85', '2020-04-29', 0),
(5, 'Iron Man', '3.45', '2020-04-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_transaction`
--

CREATE TABLE `db_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_book_id` int(11) NOT NULL COMMENT 'db_book=>book_id',
  `transaction_firstname` varchar(255) NOT NULL,
  `transaction_lastname` varchar(255) NOT NULL,
  `transaction_borrow_date` date NOT NULL,
  `transaction_return_date` date NOT NULL,
  `transaction_borrow_totaldays` int(11) NOT NULL,
  `transaction_borrow_transaction_totalprice` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_transaction`
--

INSERT INTO `db_transaction` (`transaction_id`, `transaction_book_id`, `transaction_firstname`, `transaction_lastname`, `transaction_borrow_date`, `transaction_return_date`, `transaction_borrow_totaldays`, `transaction_borrow_transaction_totalprice`) VALUES
(1, 2, 'Tine', 'Salangsang', '2020-06-25', '2020-06-30', 5, '39.00'),
(2, 2, 'Tine', 'Salangsang', '2020-06-10', '2020-06-26', 16, '124.80'),
(3, 3, 'Tine', 'Salangsang', '2020-06-10', '2020-06-26', 16, '253.60');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_book`
--
ALTER TABLE `db_book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `db_transaction`
--
ALTER TABLE `db_transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_book`
--
ALTER TABLE `db_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_transaction`
--
ALTER TABLE `db_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
