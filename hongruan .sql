-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-03 02:12:01
-- 服务器版本： 5.7.14-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hongruan`
--

-- --------------------------------------------------------

--
-- 表的结构 `administrators`
--

CREATE TABLE `administrators` (
  `AdministratorsID` int(255) UNSIGNED NOT NULL COMMENT '管理员ID',
  `UserName` varchar(15) NOT NULL COMMENT '用户名',
  `Password` varchar(20) NOT NULL COMMENT '密码',
  `FaceInformation` varchar(30) NOT NULL COMMENT '管理员面部信息',
  `Logintime` varchar(20) NOT NULL COMMENT '登录时间',
  `HeadPortrait` varchar(20) NOT NULL COMMENT '头像',
  `PhoneNumber` bigint(20) NOT NULL COMMENT '手机号',
  `Jointime` varchar(20) NOT NULL COMMENT '录入时间',
  `SecurityPermissions` int(255) NOT NULL COMMENT '安全权限',
  `OnlineStatus` int(2) NOT NULL,
  `Cookie` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `administrators`
--

INSERT INTO `administrators` (`AdministratorsID`, `UserName`, `Password`, `FaceInformation`, `Logintime`, `HeadPortrait`, `PhoneNumber`, `Jointime`, `SecurityPermissions`, `OnlineStatus`, `Cookie`) VALUES
(1, '管理员', '123', '1', '', '', 15897617621, '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `chatingbox`
--

CREATE TABLE `chatingbox` (
  `ID` int(10) UNSIGNED NOT NULL,
  `User` varchar(15) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Note` longtext NOT NULL,
  `Project` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chatingbox`
--

INSERT INTO `chatingbox` (`ID`, `User`, `State`, `Time`, `Note`, `Project`) VALUES
(29, '接包员 堵大华', '普通', '2018-04-29 20:19', '我负责手机端，行吗？', '57'),
(30, '接包员 熊晨伍', '普通', '2018-04-29 20:20', '那我负责服务端', '57'),
(31, '接包员 秦爽', '普通', '2018-04-29 20:27', '数据库就我来写咯', '57'),
(32, '发包员 李逍遥', 'Note', '2018-04-29 20:35', '我们希望五一前能够看到初步的解决方案', '57'),
(33, '管理员 管理员', '管理员', '2018-04-29 20:40', '服务器维护', '0'),
(34, '发包员 李逍遥', '普通', '2018-04-30 12:49', '熊晨伍你帮一下秦爽写数据库', '0'),
(35, '发包员 李逍遥', '普通', '2018-04-30 12:51', '尹恒玉和熊晨伍一起写服务端', '0'),
(36, '接包员 熊晨伍', '普通', '2018-04-30 15:38', '可以', '1'),
(37, '管理员 管理员', '管理员', '2018-05-02 20:16', '全网通知', '0'),
(38, '发包员 李逍遥', '普通', '2018-05-02 20:21', '这是全局交流平台，所有发包人员旗下的交流信息都会在这显示', '0'),
(39, '发包员 李逍遥', '普通', '2018-05-02 20:21', '这是项目内部的交流平台', '1'),
(40, '发包员 李逍遥', '普通', '2018-05-03 00:46', 'adaa', '0'),
(41, '发包员 李逍遥', '普通', '2018-05-03 00:46', 'adaddafasdf', '0');

-- --------------------------------------------------------

--
-- 表的结构 `companies`
--

CREATE TABLE `companies` (
  `ID` int(255) UNSIGNED NOT NULL COMMENT 'ID',
  `Name` varchar(255) NOT NULL COMMENT '公司名字',
  `JoinTime` varchar(15) NOT NULL COMMENT '录入时间',
  `MembersNumber` varchar(15) NOT NULL COMMENT '公司规模',
  `Document` varchar(15) NOT NULL COMMENT '公司证件',
  `Members` varchar(50) NOT NULL COMMENT '公司人员',
  `Advantage` varchar(50) NOT NULL COMMENT '擅长方向',
  `CreditRating` int(15) NOT NULL COMMENT '信誉等级',
  `TotalWorkTime` varchar(15) NOT NULL COMMENT '员工总工时',
  `BankCardNumber` varchar(30) NOT NULL COMMENT '公司对公银行卡',
  `SecurityPermissions` int(1) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `PrincipalName` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `companies`
--

INSERT INTO `companies` (`ID`, `Name`, `JoinTime`, `MembersNumber`, `Document`, `Members`, `Advantage`, `CreditRating`, `TotalWorkTime`, `BankCardNumber`, `SecurityPermissions`, `PhoneNumber`, `PrincipalName`) VALUES
(1, '吃瓜外包服务公司', '2017-12-1', '7', 'null', '["1","2","3","4","5","18","19"]', '{"0":"java","1":"php","2":"C"}', 5, '20', '544568849696', 2, '1234', '李四'),
(3, '杭州佐威网络科技有限公司', '2018-04-09 18:3', '3', '1', '["12","13","14"]', '["php"]', 3, '23', '3214', 2, '1234', '啦啦啦');

-- --------------------------------------------------------

--
-- 表的结构 `contractor`
--

CREATE TABLE `contractor` (
  `ContractorID` int(255) UNSIGNED NOT NULL COMMENT '发包人员ID',
  `UserName` varchar(15) NOT NULL COMMENT '姓名',
  `Password` varchar(20) NOT NULL COMMENT '密码',
  `Gender` varchar(15) NOT NULL COMMENT '性别',
  `Birthday` varchar(15) NOT NULL COMMENT '出生日期',
  `Idcard` varchar(15) NOT NULL COMMENT '身份证号',
  `PhoneNumber` bigint(20) NOT NULL COMMENT '手机号码',
  `EmergencyContactName` varchar(15) NOT NULL COMMENT '紧急联系人姓名',
  `EmergencyContactPhone` varchar(20) NOT NULL COMMENT '紧急联系人电话',
  `BankCardNumber` varchar(30) NOT NULL COMMENT '银行卡号',
  `FaceInformation` varchar(50) NOT NULL COMMENT '脸部信息录入',
  `Logintime` varchar(20) NOT NULL COMMENT '上次登录时间',
  `Jointime` varchar(20) NOT NULL COMMENT '录入时间',
  `FaceInform` varchar(30) NOT NULL COMMENT '登录时录入的面部信息',
  `WorkTime` varchar(15) NOT NULL COMMENT '工作时长',
  `SecurityPermissions` varchar(15) NOT NULL COMMENT '安全权限',
  `OnlineStatus` int(2) NOT NULL,
  `Cookie` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `contractor`
--

INSERT INTO `contractor` (`ContractorID`, `UserName`, `Password`, `Gender`, `Birthday`, `Idcard`, `PhoneNumber`, `EmergencyContactName`, `EmergencyContactPhone`, `BankCardNumber`, `FaceInformation`, `Logintime`, `Jointime`, `FaceInform`, `WorkTime`, `SecurityPermissions`, `OnlineStatus`, `Cookie`) VALUES
(1, '李逍遥', '123', '男', '1999-03-03', '123', 15867636996, '李四', '1', '123', '1', '2018-05-03 00:40', '2017-12-15 9:00', '', '', '2', 0, ''),
(2, '张兴平', '123', '男', '1997-01-01', '123', 13858636996, '张三', '123', '132', '1', '2018-04-08 15:00', '2017-12-15 9:00', '', '', '2', 1, 'PKFgqtLS'),
(3, '表哥', '', '男', '2017-06-06 ', '421302199901055', 15997862248, '小王', '110', '', '20180502', '', '2018-05-02 21:48', '', '0', '1', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `email`
--

CREATE TABLE `email` (
  `ID` int(15) NOT NULL COMMENT 'ID',
  `Name` varchar(20) NOT NULL COMMENT '标题',
  `PosterID` varchar(15) NOT NULL COMMENT '发件人姓名',
  `RecipientsID` varchar(50) NOT NULL COMMENT '收件人id',
  `Note` longtext NOT NULL COMMENT '内容',
  `Resources` varchar(30) DEFAULT NULL COMMENT '附件资源',
  `Time` varchar(20) NOT NULL COMMENT '发件时间',
  `Type` varchar(15) NOT NULL COMMENT '类型',
  `State` varchar(20) NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `email`
--

INSERT INTO `email` (`ID`, `Name`, `PosterID`, `RecipientsID`, `Note`, `Resources`, `Time`, `Type`, `State`) VALUES
(44, '关于手机端实现', 'u1', ',c1,', '请问手机端是需要nativeAndroid实现吗，可以通过APICloud或者响应式网页实现吗？<div id="tpcamera"></div>', NULL, '2018-04-29 20:18', '普通', ','),
(45, '资源：请求数据库文件', 'u2', ',c1,', '@57@##请问数据库的设计文档有吗，请发一份数据库的文档资源<div id="tpcamera"></div>', NULL, '2018-04-29 20:24', '资源', ',c1,'),
(46, 'Bug：服务器远程连接失败', 'u3', ',c1,', '@57@##贵公司提供的服务器并不能正常使用，一直处于离线状态，希望能够尽快解决。<div id="tpcamera"></div>', NULL, '2018-04-29 20:30', 'bug', ','),
(47, '服务器维护', 'a1', ',a1,c1,c2,u1,u2,u3,u4,u5,u12,u13,u14,', '本系统将在今晚21点到23点进行服务器维护，请及时保存内容<div id="tpcamera"></div>', '{}', '2018-04-29 20:40', '全网通知', ',a1,c1,c2,u1,u2,u3,u'),
(49, '成果上传', 'u0', ',c1,', '成果资源文档4-30更新上传，等待审核：<a class="btn btn-primary" href="/tp5/public/index.php/contractor/resourcecheck/resultcheck/id/67">成果审核</a>', NULL, '2018-04-30 16:00', '普通', ','),
(50, '成果上传', 'u0', ',c1,', '成果资源解决方案上传，等待审核：<a class="btn btn-primary" href="/tp5/public/index.php/contractor/resourcecheck/resultcheck/id/68">成果审核</a>', NULL, '2018-05-02 19:19', '普通', ',c1,'),
(51, '成果上传', 'u0', ',c1,', '成果资源解决方案上传，等待审核：<a class="btn btn-primary" href="/tp5/public/index.php/contractor/resourcecheck/resultcheck/id/69">成果审核</a>', NULL, '2018-05-02 19:22', '普通', ',c1,'),
(52, '成果上传', 'u0', ',c1,', '成果资源人员关系图上传，等待审核：<a class="btn btn-primary" href="/tp5/public/index.php/contractor/resourcecheck/resultcheck/id/70">成果审核</a>', NULL, '2018-05-02 19:23', '普通', ',c1,'),
(53, '成果上传', 'u0', ',c1,', '成果资源演示流程上传，等待审核：<a class="btn btn-primary" href="/tp5/public/index.php/contractor/resourcecheck/resultcheck/id/71">成果审核</a>', NULL, '2018-05-02 19:23', '普通', ',c1,'),
(54, '成果上传', 'u0', ',c1,', '成果资源项目逻辑上传，等待审核：<a class="btn btn-primary" href="/tp5/public/index.php/contractor/resourcecheck/resultcheck/id/72">成果审核</a>', NULL, '2018-05-02 19:24', '普通', ',c1,'),
(55, '邮件发送', 'c1', ',u1,', '邮件发送，支持收件人自动补全<div id="tpcamera"></div>', NULL, '2018-05-02 20:09', '普通', ','),
(56, 'Bug：特殊邮件发送', 'u1', ',c1,', '@1@##这是特殊邮件，会在发包人员代办事件中特别显示。<div id="tpcamera"></div>', NULL, '2018-05-02 20:11', 'bug', ','),
(57, '全网通知', 'a1', ',a1,c1,c2,u1,u2,u3,u4,u5,u12,u13,u14,u18,', '全网通知会在收件时高亮显示<div id="tpcamera"></div>', '{}', '2018-05-02 20:16', '全网通知', ',a1,c2,u1,u2,u3,u');

-- --------------------------------------------------------

--
-- 表的结构 `log`
--

CREATE TABLE `log` (
  `ID` int(10) UNSIGNED NOT NULL,
  `UserName` varchar(30) NOT NULL DEFAULT '',
  `State` varchar(30) NOT NULL DEFAULT '',
  `Time` varchar(20) NOT NULL DEFAULT '00:00:00.000000',
  `Note` varchar(35) NOT NULL DEFAULT '',
  `ProjectID` varchar(10) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `log`
--

INSERT INTO `log` (`ID`, `UserName`, `State`, `Time`, `Note`, `ProjectID`) VALUES
(72, '堵大华', '签到', '2018-04-07 12:38', '@1@已签到', '45'),
(73, '堵大华', '签到', '2018-04-07 12:38', '@1@已签到', '45'),
(74, '堵大华', '签退', '2018-04-07 12:38', '@1@已签退', '45'),
(75, '堵大华', '登出', '2018-04-07 12:38', '@1@已登出', '0'),
(76, '堵大华', '签到', '2018-04-07 12:59', '@1@已签到', '43'),
(77, '堵大华', '签退', '2018-04-07 13:03', '@1@已签退', '43'),
(78, '堵大华', '签到', '2018-04-07 13:03', '@1@已签到', '43'),
(79, '堵大华', '签退', '2018-04-07 13:03', '@1@已签退', '43'),
(80, '堵大华', '签到', '2018-04-07 13:06', '@1@已签到', '43'),
(81, '堵大华', '签到', '2018-04-07 19:03', '@1@已签到', '48'),
(82, '堵大华', '签退', '2018-04-07 19:03', '@1@已签退', '48'),
(83, '堵大华', '登出', '2018-04-07 19:04', '@1@已登出', '0'),
(84, '堵大华', '登出', '2018-04-07 20:06', '@1@已登出', '0'),
(85, '堵大华', '登出', '2018-04-07 20:07', '@1@已登出', '0'),
(86, '堵大华', '登出', '2018-04-07 20:25', '@1@已登出', '0'),
(87, '堵大华', '登出', '2018-04-07 20:31', '@1@已登出', '0'),
(88, '堵大华', '登出', '2018-04-07 21:16', '@1@已登出', '0'),
(89, '堵大华', '登出', '2018-04-08 18:43', '@1@已登出', '0'),
(90, '堵大华', '登出', '2018-04-09 18:48', '@1@已登出', '0'),
(91, '堵大华', '登出', '2018-04-09 18:48', '@1@已登出', '0'),
(92, '堵大华', '登出', '2018-04-09 20:49', '@1@已登出', '0'),
(93, '堵大华', '登出', '2018-04-09 21:08', '@1@已登出', '0'),
(94, '堵大华', '登出', '2018-04-10 20:07', '@1@已登出', '0'),
(95, '堵大华', '签到', '2018-04-11 12:44', '@1@已签到', '53'),
(96, '堵大华', '登出', '2018-04-11 12:45', '@1@已登出', '0'),
(97, '堵大华', '登出', '2018-04-11 21:39', '@1@已登出', '0'),
(98, '郑素同', '签到', '2018-04-12 20:05', '@12@已签到', '54'),
(99, '郑素同', '登出', '2018-04-12 20:10', '@12@已登出', '0'),
(100, '郑素同', '登出', '2018-04-12 20:10', '@12@已登出', '0'),
(101, '堵大华', '签到', '2018-04-12 20:11', '@1@已签到', '47'),
(102, '堵大华', '登出', '2018-04-12 20:12', '@1@已登出', '0'),
(103, '堵大华', '签到', '2018-04-12 20:32', '@1@已签到', '43'),
(104, '堵大华', '签退', '2018-04-12 20:32', '@1@已签退', '43'),
(105, '堵大华', '登出', '2018-04-12 20:35', '@1@已登出', '0'),
(106, '堵大华', '签到', '2018-04-12 20:40', '@1@已签到', '56'),
(107, '堵大华', '登出', '2018-04-12 20:41', '@1@已登出', '0'),
(108, '堵大华', '登出', '2018-04-28 20:55', '@1@已登出', '0'),
(109, '堵大华', '登出', '2018-04-29 13:49', '@1@已登出', '0'),
(110, '汪佳', '登出', '2018-04-29 14:57', '@13@已登出', '0'),
(111, '汪佳', '登出', '2018-04-29 14:57', '@13@已登出', '0'),
(112, '堵大华', '签到', '2018-04-29 20:16', '@1@已签到', '57'),
(113, '堵大华', '登出', '2018-04-29 20:19', '@1@已登出', '0'),
(114, '熊晨伍', '登出', '2018-04-29 20:24', '@2@已登出', '0'),
(115, '熊晨伍', '登出', '2018-04-29 20:24', '@2@已登出', '0'),
(116, '秦爽', '签到', '2018-04-29 20:27', '@14@已签到', '57'),
(117, '秦爽', '登出', '2018-04-29 20:28', '@14@已登出', '0'),
(118, '秦爽', '登出', '2018-04-29 20:28', '@14@已登出', '0'),
(119, '尹恒玉', '签到', '2018-04-29 20:28', '@3@已签到', '57'),
(120, '尹恒玉', '签到', '2018-04-29 20:30', '@3@已签到', '57'),
(121, '尹恒玉', '签退', '2018-04-29 20:30', '@3@已签退', '57'),
(122, '尹恒玉', '登出', '2018-04-29 20:30', '@3@已登出', '0'),
(123, '堵大华', '签到', '2018-04-30 13:39', '@1@已签到', '65'),
(124, '堵大华', '登出', '2018-04-30 15:37', '@1@已登出', '0'),
(125, '堵大华', '登出', '2018-04-30 15:56', '@1@已登出', '0'),
(126, '熊晨伍', '签到', '2018-04-30 16:00', '@2@已签到', '46'),
(127, '熊晨伍', '登出', '2018-04-30 16:02', '@2@已登出', '0'),
(128, '熊晨伍', '登出', '2018-04-30 16:02', '@2@已登出', '0'),
(129, '堵大华', '登出', '2018-04-30 18:27', '@1@已登出', '0'),
(130, '堵大华', '登出', '2018-04-30 21:43', '@1@已登出', '0'),
(131, '堵大华', '登出', '2018-04-30 21:56', '@1@已登出', '0'),
(132, '堵大华', '登出', '2018-04-30 22:01', '@1@已登出', '0'),
(133, '堵大华', '登出', '2018-05-01 13:57', '@1@已登出', '0'),
(134, '张大庄', '登出', '2018-05-02 18:31', '@18@已登出', '0'),
(135, '张大庄', '登出', '2018-05-02 18:31', '@18@已登出', '0'),
(136, '张大庄', '登出', '2018-05-02 18:32', '@18@已登出', '0'),
(137, '张大庄', '登出', '2018-05-02 18:33', '@18@已登出', '0'),
(138, '堵大华', '签到', '2018-05-02 18:36', '@1@已签到', '1'),
(139, '堵大华', '签退', '2018-05-02 18:36', '@1@已签退', '1'),
(140, '堵大华', '登出', '2018-05-02 18:36', '@1@已登出', '0'),
(141, '堵大华', '签到', '2018-05-02 19:14', '@1@已签到', '66'),
(142, '堵大华', '登出', '2018-05-02 19:20', '@1@已登出', '0'),
(143, '堵大华', '登出', '2018-05-02 19:24', '@1@已登出', '0'),
(144, '堵大华', '登出', '2018-05-02 19:58', '@1@已登出', '0'),
(145, '熊晨伍', '登出', '2018-05-02 19:59', '@2@已登出', '0'),
(146, '堵大华', '登出', '2018-05-02 20:11', '@1@已登出', '0'),
(147, '郑素同', '登出', '2018-05-02 20:58', '@12@已登出', '0'),
(148, '呼呼', '登出', '2018-05-03 00:43', '@19@已登出', '0'),
(149, '呼呼', '登出', '2018-05-03 00:44', '@19@已登出', '0');

-- --------------------------------------------------------

--
-- 表的结构 `project`
--

CREATE TABLE `project` (
  `ID` int(255) UNSIGNED NOT NULL COMMENT 'ID',
  `Contractor` varchar(15) NOT NULL COMMENT '发包人员',
  `Starttime` varchar(20) NOT NULL COMMENT '发包时间',
  `Endtime` varchar(20) NOT NULL COMMENT '预计结束时间',
  `ConfidentialityAgreement` varchar(15) NOT NULL COMMENT '保密协议',
  `SafetyGrade` varchar(15) NOT NULL COMMENT '安全等级',
  `ProjectName` varchar(15) NOT NULL COMMENT '项目名称',
  `Class` varchar(15) NOT NULL COMMENT '项目类型',
  `ProjectStarttime` varchar(20) NOT NULL COMMENT '项目起始时间',
  `ProjectEndtime` varchar(20) NOT NULL COMMENT '项目截止时间',
  `UserID` varchar(15) NOT NULL DEFAULT ',' COMMENT '接包人员',
  `Plan` longtext NOT NULL COMMENT '实施计划',
  `Resources` varchar(30) NOT NULL DEFAULT '[]' COMMENT '项目资源',
  `State` varchar(15) NOT NULL COMMENT '任务状态',
  `Children` varchar(50) NOT NULL DEFAULT '{}',
  `Price` int(7) NOT NULL DEFAULT '0' COMMENT '价格',
  `ContractorGrade` int(3) NOT NULL DEFAULT '0' COMMENT '人员评价',
  `ResponseSpeed` int(3) NOT NULL DEFAULT '0' COMMENT '响应速度',
  `CompleteGrade` int(3) NOT NULL DEFAULT '0' COMMENT '完成度',
  `ImplementationGrade` int(3) NOT NULL DEFAULT '0' COMMENT '执行度',
  `TotalGrade` int(3) NOT NULL DEFAULT '0',
  `ResultResourceID` varchar(30) NOT NULL DEFAULT '{}' COMMENT '项目成果id',
  `ResultResourceNum` int(2) NOT NULL DEFAULT '0' COMMENT '需求项目成果数量',
  `Cover` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `project`
--

INSERT INTO `project` (`ID`, `Contractor`, `Starttime`, `Endtime`, `ConfidentialityAgreement`, `SafetyGrade`, `ProjectName`, `Class`, `ProjectStarttime`, `ProjectEndtime`, `UserID`, `Plan`, `Resources`, `State`, `Children`, `Price`, `ContractorGrade`, `ResponseSpeed`, `CompleteGrade`, `ImplementationGrade`, `TotalGrade`, `ResultResourceID`, `ResultResourceNum`, `Cover`) VALUES
(1, '1', '2018-01-02 00:00', '2018-04-25 00:00', '', '低', '众包平台', 'root', '', '', ',1,2,3,5,4,', '众包平台，目的于方便外包项目管理<div id="tpcamera"></div>', '["1","56"]', '延期', '["41","46","53"]', 10000, 0, 0, 20, 0, 0, '["68"]', 5, '11.jpg'),
(41, '1', '2018-01-05 00:00', '2018-05-10 00:00', '', '低', '代码实现', 'tree', '', '', ',1,2,3,5,4,12,', '代码分为四个模块实现<div>1.管理员模块</div><div>2.发包人员模块</div><div>3.接包人员模块</div><div>4.api模块</div>', '["57","1","59","58"]', '可能延期', '["42","43","44","45"]', 5000, 0, 0, 10, 0, 0, '{}', 10, '12.jpg'),
(42, '1', '2018-05-01 9:00', '2018-05-01 15:00', '', '低', 'API实现', 'tree', '', '', ',2,3,', '<div>API接口</div>存放项目对数据库操作的所有方法<div id="tpcamera"></div>', '["57","1","59","58"]', '延期', '{}', 1000, 0, 0, 50, 0, 0, '{}', 2, '13.jpg'),
(43, '1', '2018-05-01 11:00', '2018-05-01 21:00', '', '中', '管理员模块', 'tree', '', '', ',1,3,', '需要实现管理人员列表，查看考勤情况。<div id="tpcamera"></div>', '["57","59","56"]', '延期', '{}', 500, 0, 0, 50, 0, 0, '["62"]', 2, '14.jpg'),
(44, '1', '2018-05-01 8:00', '2018-05-01 12:00', '', '高', '发包人员模块', 'tree', '', '', ',1,4,', '主要发包人员模块<div id="tpcamera"></div><div>1.需要方便的发布项目</div><div>2.需要随时监控项目进展</div><div>3.需要方便管理人员与资源</div>', '["57","1","59","56"]', '延期', '{}', 1000, 0, 0, 33, 0, 0, '{}', 3, '15.jpg'),
(45, '1', '2018-04-30 15:00', '2018-05-01 21:00', '', '高', '接包人员模块', 'tree', '', '', ',1,4,', '接包人员模块<div id="tpcamera"></div><div>1.方便的项目接收</div><div>2.人员考勤</div><div>3.进度提交</div><div>4.站内沟通</div>', '["57","1","59","56"]', '延期', '{}', 1000, 0, 0, 50, 0, 0, '{}', 2, '16.jpg'),
(46, '1', '2018-04-30 9:00', '2018-04-30 22:00', '', '低', '文档编写', 'tree', '', '', ',2,3,5,', '对众包平台的使用方法进行详细的文档编写<div id="tpcamera"></div><div>1.演示录像</div><div>2.操作说明</div><div>3.项目文档</div><div>4.演示ppt</div>', '["60"]', '延期', '["47","48"]', 1000, 0, 0, 60, 0, 0, '["65","66","67"]', 5, '17.jpg'),
(47, '1', '2018-04-30 12:00', '2018-05-30 23:00', '', '低', '文档', 'tree', '', '2018-04-29 21:08', ',2,3,5,1,', '项目文档编写和说明书编写<div id="tpcamera"></div>', '["57","60"]', '完成', '{}', 500, 66, 64, 50, 95, 75, '{}', 2, '18.jpg'),
(48, '1', '2018-04-09 10:00', '2018-05-06 16:00', '', '低', 'ppt讲解', 'tree', '', '2018-04-09 17:07', ',1,3,', '项目ppt与演讲稿<div id="tpcamera"></div>', '["60","56"]', '完成', '{}', 500, 50, 50, 50, 50, 50, '["61"]', 2, '19.jpg'),
(49, '1', '2018-04-07 00:00', '2018-06-09 00:00', '', '中', '人员分配', 'root', '', '', ',4,', '人员分配', '[]', '等待资源', '{}', 100, 0, 0, 100, 0, 0, '{}', 1, '20.jpg'),
(50, '1', '2018-04-07 00:00', '2018-06-14 00:00', '', '低', '资源分配', 'root', '', '', ',2,', '资源分配', '[]', '待接收', '{}', 1000, 0, 0, 100, 0, 0, '{}', 1, '21.jpg'),
(51, '1', '2017-12-01 00:00', '2018-02-01 00:00', '', '低', 'python桌面应用', 'root', '2017-12-2 8:00', '2018-1-20 15:00', ',1,', 'py图形界面RPG游戏', '[]', '完成', '{}', 5000, 90, 75, 60, 77, 79, '{}', 1, '27.jpg'),
(52, '1', '2018-01-01 00:00', '2018-03-07 00:00', '', '中', '面部识别系统', 'root', '2018-1-15 10:00', '2018-4-1 19:00', ',1,2,', '提高面部识别系统的识别率', '[]', '完成', '{}', 2000, 80, 70, 91, 60, 80, '{}', 1, '28.jpg'),
(53, '1', '2018-01-01 00:00', '2018-04-05 00:00', '', '高', '安全平台', 'tree', '', '', ',1,4,', '安全平台搭建<div id="tpcamera"></div><div>1.防止第三方介入</div><div>2.防止低权限查看高权限内容</div><div>3.高权限在线查看</div>', '["57","1","59","58","60","56"]', '延期', '{}', 1000, 0, 0, 33, 0, 0, '{}', 3, '24.jpg'),
(54, '1', '2018-04-12 09:00', '2018-04-15 17:00', '', '低', '人员模型构建', 'root', '', '2018-04-12 20:21', ',12,', '新建项目<div id="tpcamera"></div>', '["1"]', '延期', '{}', 100, 100, 98, 100, 78, 95, '{}', 1, '25.jpg'),
(55, '1', '2018-04-12 00:00', '2018-04-12 00:00', '', '低', '家视电视销售网站网络架构设计', 'root', '', '', ',12,', '`1<div id="tpcamera"></div>', '["56"]', '延期', '{}', 1, 0, 0, 100, 0, 0, '{}', 1, '26.jpg'),
(56, '1', '2018-04-12 09:00', '2018-04-12 15:00', '', '低', '实验教学管理系统的设计与实现', 'root', '', '', ',13,2,', '家视电视销售网站网络架构设计(论文11000字) 需求分析 电视销售网站仅仅简单的依靠提高硬件性能并不能真正解决像网站类负载平衡问题。', '["62","61"]', '延期', '{}', 100, 0, 0, 100, 0, 0, '{}', 1, '7.jpg'),
(57, '1', '2018-04-22 10:00', '2018-05-07 16:00', '', '低', '基于安卓Android的快递服', 'root', '', '', ',1,13,2,3,14,', '<span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">软件开发前的需求分析是软件成败的关键，如果没有进行详细的需求分析，没有充分理解系统的各类用户的实际需求，那么最终的软件产品充其量只能说是软件开发者的作品而已，没有任何意义可言。因此，在开发 基于Android快递服务系统之初，我网络上搜索了一些快递服务系统系统进行参考，对其需求分析进行了详细的了解。</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">服务器端：</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">（1）管理员管理</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">（2）快递公司快递员管理</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">（3）寄件信息管理</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">(4) 投诉管理</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">(5)注册用户管理</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">手机端：</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">（1）登陆</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">（2）个人信息修改</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">（3）寄件查看</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">（4）快递查询</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">&nbsp;(5)&nbsp; 服务评价</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">&nbsp;(6)&nbsp; 我要寄件</span><div id="tpcamera"></div>', '["63","64"]', '可能延期', '["64","65"]', 1000, 0, 0, 20, 0, 0, '{}', 5, '20.jpg'),
(66, '1', '2018-05-02 09:00', '2018-05-20 17:00', '', '低', '网上书店(图书)管理系统的设计', 'root', '', '2018-05-02 19:26', ',5,13,14,1,', '<p style="padding: 0px; margin-bottom: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><strong style="padding: 0px; margin: 0px;">网上书店(图书)管理系统的设计与实现(</strong><strong style="padding: 0px; margin: 0px;"><strong style="padding: 0px; margin: 0px;">HTML5,</strong>SSH,<a href="http://www.56doc.com/tags.php?/MySQL/" style="padding: 0px; margin: 0px; color: rgb(51, 51, 51);"><u style="padding: 0px; margin: 0px;">MySQL</u></a>)(含录像)(任务书,开题报告,毕业论文13600字,程序代码,<a href="http://www.56doc.com/tags.php?/MySQL/" style="padding: 0px; margin: 0px; color: rgb(51, 51, 51);"><u style="padding: 0px; margin: 0px;">MySQL</u></a>数据库)</strong><br style="padding: 0px; margin: 0px;">网上书店管理系统功能模块划分<br style="padding: 0px; margin: 0px;">根据需求分析与系统功能设计目标，结合实际情况本系统功能模块设计分为如下几个模块：<br style="padding: 0px; margin: 0px;">1．主页：在这里我们可以看见本系统的主要功能和信息。<br style="padding: 0px; margin: 0px;">2．用户注册：在这里我们可以注册我们的基本信息，其中电话和Email是比较重要的，因为我们需要对这些信息进行处理，以方便用户的付款和邮购。<br style="padding: 0px; margin: 0px;">3．用户登陆：为了方便用户的付款，邮购和管理，我们需要变成会员后才可以进行消费。<br style="padding: 0px; margin: 0px;">4．书目浏览：成功登陆后的用户可以分页浏览图书书目，并将想要的图书提交到填写订单页面。如果用户还没有注册就直接进入或者没有成功登陆就进入页面，将被连接到“用户登录页面”。<br style="padding: 0px; margin: 0px;">5．订购图书：成功登陆的用户可以在该页面定购所需要的图书。如果用户还没有注册就直接进入或者没有成功登陆就进入页面，将被连接到“用户登陆页面”。<br style="padding: 0px; margin: 0px;">6．查看订单：成功登陆的用户可以在该页修改已经订购的图书。如果用户还没有注册就直接进入或者没有成功登陆就进入页面，将被连接到“用户登陆页面”。</p><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">7．修改订单：成功登陆的用户可以在该页修改或删除已经订购的图书。如果用户还没有注册就直接进入或者没有成功登陆就进入页面，将被连接到“用户登陆页面”。</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">8．书目查询：成功登陆的用户可以在该页查找自己需要的图书。如果用户还没有注册就直接进入或者没有成功登陆就进入页面，将被连接到“用户登陆页面”。</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">9．修改密码：成功登陆的用户可以在该页修改自己的密码。如果用户还没有注册就直接进入或者没有成功登陆就进入页面，将被连接到“用户登陆页面”。</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">10．修改个人信息：成功登陆的用户可以在该页修改自己当初注册时的信息。如果用户还没有注册就直接进入或者没有成功登陆就进入页面，将被连接到“用户登陆页面”。</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">11．留言板：成功登录的用户可以在该页留言。</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">12．管理员：查看用户订单，查看用户信息，并根据用户信息和用户订单对商品进行发派。</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">开发环境：MyEclipse</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">Web服务器：Tomcat</span><br style="padding: 0px; margin: 0px; color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;"><span style="color: rgb(52, 52, 52); font-family: Tahoma, Arial, 宋体; font-size: 14px; font-weight: 400;">数据库：MySQL</span><div id="tpcamera"></div>', '["1","59","58","63"]', '完成', '{}', 1000, 83, 90, 80, 94, 94, '["69","70","71","72"]', 5, '18.jpg'),
(64, '1', '2018-04-30 00:00', '2018-05-03 00:00', '', '低', '数据库设计', 'tree', '', '', ',2,14,', '数据库设计<div id="tpcamera"></div><div>1.基于MySQL</div><div>2.完整数据库文档</div>', '[]', '延期', '{}', 100, 0, 0, 50, 0, 0, '{}', 2, '8.jpg'),
(65, '1', '2018-04-30 00:00', '2018-04-30 00:00', '', '低', '手机端', 'tree', '', '', ',1,', '手机端<div id="tpcamera"></div><div>基于android开发APP</div>', '[]', '延期', '{}', 100, 0, 0, 50, 0, 0, '{}', 2, '20.jpg'),
(68, '1', '2018-05-02 00:00', '2018-05-04 00:00', '', '中', '虹软图像处理', 'root', '', '', ',1,3,', '这个主要是图像处理<div id="tpcamera"></div>', '["73"]', '待接收', '{}', 1000, 0, 0, 0, 0, 0, '{}', 5, '8.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `resource`
--

CREATE TABLE `resource` (
  `ID` int(255) UNSIGNED NOT NULL COMMENT 'ID',
  `Name` varchar(25) NOT NULL,
  `Founder` varchar(15) NOT NULL COMMENT '创建人',
  `CreationDate` varchar(20) NOT NULL COMMENT '创建日期',
  `ModifiedDate` varchar(20) NOT NULL COMMENT '修改时间',
  `Editor` varchar(15) NOT NULL COMMENT '修改人',
  `SafetyGrade` int(15) NOT NULL COMMENT '安全等级',
  `LocalAddress` varchar(60) NOT NULL COMMENT '地址',
  `ChildID` varchar(30) NOT NULL COMMENT '子资源ID',
  `Type` varchar(15) NOT NULL COMMENT '资源类型',
  `State` varchar(25) NOT NULL DEFAULT 'private'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `resource`
--

INSERT INTO `resource` (`ID`, `Name`, `Founder`, `CreationDate`, `ModifiedDate`, `Editor`, `SafetyGrade`, `LocalAddress`, `ChildID`, `Type`, `State`) VALUES
(61, 'PPT', 'u1', '2018-04-07 19:03', '2018-04-07 20:30', 'u1', 0, '20180407/39dfe1e734314c4801786bb6b5da921b.pptx', '', '文档', '审核未通过'),
(62, 'jpg1', 'u1', '2018-04-12 20:33', '2018-04-12 20:33', 'u1', 0, '20180412/71892fd040b4ddc308458969ee806f73.png', '', '图片', '已审核'),
(63, '项目成果样例', 'c1', '2018-04-29 20:12', '2018-04-29 20:13', 'c1', 0, '20180429/2ae2e2417a58bdec72371913c74e22ca.jpg', '', '图片', 'private'),
(64, '项目成果案例', 'c1', '2018-04-29 20:14', '', '', 0, '20180429/ce17656fb9f4e8cf41fec09469d1095e.jpg', '', '图片', 'private'),
(68, '解决方案', 'u1', '2018-05-02 19:19', '', '', 0, '20180502/8da9ae766a78f5c0dd7a4e9387fc63ea.doc', '', '文档', '已审核'),
(69, '解决方案', 'u1', '2018-05-02 19:22', '', '', 0, '20180502/52110611db2cd85813f1421c34aee39d.doc', '', '文档', '已审核'),
(67, '文档4-30更新', 'u2', '2018-04-30 16:00', '', '', 0, '20180430/c9137ad73f61f8b48f6274f383000199.doc', '', '文档', '等待审核'),
(70, '人员关系图', 'u1', '2018-05-02 19:23', '', '', 0, '20180502/c27f755959993f113d7a848e8b8d39fc.png', '', '图片', '已审核'),
(71, '演示流程', 'u1', '2018-05-02 19:23', '', '', 0, '20180502/c22eaf24f8f1fa27155e6a13bbf041cb.png', '', '图片', '已审核'),
(72, '项目逻辑', 'u1', '2018-05-02 19:24', '', '', 1, '20180502/27bb5725f8262f764aac6f47d9e879dc.png', '', '图片', '已审核'),
(1, '命名标准', 'c1', '2018-04-06 15:37', '', '', 0, '20180406/9d2af03d620ea88642cca5f4879f0678.doc', '', '文档', 'public'),
(56, '讨论要求', 'c1', '2018-04-06 15:41', '2018-05-02 19:57', 'c1', 0, '20180406/e32446b3cd8ad61fa16a30b91375a9b8.doc', '', '文档', ',u2,'),
(57, '功能表', 'c1', '2018-04-06 16:00', '', '', 0, '20180406/6ba1fbde2a3725e030962ed6960795df.xlsx', '', '文档', 'public'),
(58, '数据库设计', 'c1', '2018-04-06 16:00', '', '', 0, '20180406/b8a23b6b9820611570795cfb5501c390.xlsx', '', '文档', 'public'),
(59, '接口文档', 'c1', '2018-04-06 16:01', '', '', 0, '20180406/545800f7c1391b3160c9e60994e305c4.docx', '', '文档', 'public'),
(60, '解决方案', 'c1', '2018-04-06 16:24', '2018-05-01 15:53', 'c1', 0, '20180501/e004c8f6374965929cac04e9881cb113.doc', '', '文档', ',,u1,,'),
(73, '图像处理文件', 'c1', '2018-05-02 23:41', '', '', 0, '20180502/4847e021c6329abc82c7177cc27c8eef.jpg', '', '图片', 'public');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `UserID` int(255) UNSIGNED NOT NULL COMMENT '接包人员ID',
  `UserName` varchar(15) NOT NULL COMMENT '姓名',
  `Password` varchar(20) NOT NULL COMMENT '密码',
  `Gender` varchar(15) NOT NULL COMMENT '性别',
  `Birthday` varchar(15) NOT NULL COMMENT '出生日期',
  `Idcard` varchar(30) NOT NULL COMMENT '身份证号',
  `PhoneNumber` varchar(20) NOT NULL COMMENT '手机号码',
  `EmergencyContactName` varchar(15) NOT NULL COMMENT '紧急联系人姓名',
  `EmergencyContactPhone` varchar(20) NOT NULL COMMENT '紧急联系人电话',
  `BankCardNumber` varchar(30) NOT NULL COMMENT '银行卡号',
  `FaceInformation` varchar(50) NOT NULL COMMENT '脸部信息录入',
  `Logintime` varchar(20) NOT NULL COMMENT '上次登录时间',
  `Company` varchar(15) NOT NULL COMMENT '所在公司',
  `Advantage` varchar(50) NOT NULL DEFAULT '{}' COMMENT '擅长方向',
  `Jointime` varchar(20) NOT NULL COMMENT '录入时间',
  `FaceInform` varchar(50) NOT NULL COMMENT '登录时录入的面部信息',
  `WorkTime` int(10) NOT NULL COMMENT '工作时长',
  `SecurityPermissions` int(15) NOT NULL COMMENT '安全权限',
  `CreditRating` int(15) NOT NULL COMMENT '信誉等级',
  `OnlineStatus` int(2) NOT NULL COMMENT '在线状态',
  `Price` int(7) NOT NULL COMMENT '创造价值',
  `Age` int(2) NOT NULL,
  `Cookie` varchar(8) NOT NULL,
  `State` int(2) NOT NULL DEFAULT '0',
  `Grade` int(2) NOT NULL DEFAULT '0' COMMENT '评价'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`, `Gender`, `Birthday`, `Idcard`, `PhoneNumber`, `EmergencyContactName`, `EmergencyContactPhone`, `BankCardNumber`, `FaceInformation`, `Logintime`, `Company`, `Advantage`, `Jointime`, `FaceInform`, `WorkTime`, `SecurityPermissions`, `CreditRating`, `OnlineStatus`, `Price`, `Age`, `Cookie`, `State`, `Grade`) VALUES
(1, '堵大华', '666', '男', '1988-10-27', '358546155610', '1234', '李田', '1234', '1548633225', '1', '2018-05-02 20:28', '1', '["java","php","c"]', '2018-01-03 15:32', '', 5, 2, 5, 0, 12500, 30, '', 1, 76),
(2, '熊晨伍', '666', '男', '1978-01-22', '210122197801221474', '12345', '赵进', '12354', '1231444', '1', '2018-05-02 19:10', '1', '{"0":"php","1":"C/C++","2":"java"}', '2017-12-03 9:00', '', 4, 0, 4, 0, 3500, 40, '', 1, 65),
(3, '尹恒玉', '666', '男', '1992-09-04', '421125199209047946', '15865666886', '李四', '12387', '1535489', '1', '2018-05-03 00:59', '1', '{"0":"php"}', '2018-01-03 7:10', '', 57, 1, 3, 1, 1500, 26, 'yT75APOP', 1, 64),
(4, '俞润国', '000', '男', '1977-04-25', '513300197704253817', '17136985243', '田鸡', '445687', '1613120', '1', '2018-03-05 19:00', '1', '["java"]', '2017-12-03 9:00', '', 50, 2, 4, 0, 0, 41, '', 1, 50),
(5, '云小乐', '333', '男', '1985-02-16', '620300199011097155', '13588568888', '章雨', '435200', '68464152', '1', '2018-03-05 19:00', '1', '["html"]', '2017-12-03 9:00', '', 24, 0, 5, 0, 11000, 28, '', 1, 69),
(12, '郑素同', '666', '男', '1989-06-10', '140202198502160890', '18768166764', '', '', '', '1', '2018-05-02 20:26', '3', '["java","python"]', '2018-04-09 18:39', '', 12, 2, 1, 0, 100, 33, '', 1, 56),
(13, '汪佳', '0123', '男', '1978-05-06', '710000198003061284', '15867636986', '', '', '', '1', '2018-04-29 14:27', '3', '["php","c","","","","","",""]', '2018-04-11 12:56', '', 27, 0, 3, 0, 10000, 29, '', 1, 67),
(14, '秦爽', '666', '男', '1988-07-24', '469026198906105487', '15867636776', '', '', '', '201804290658365ae56d1c895e2', '2018-04-29 20:42', '3', '["php","java","C++"]', '2018-04-29 14:59', '', 30, 0, 3, 0, 10000, 40, '', 1, 68),
(18, '张大庄', 'shengmin321', '男', '1998-04-02', '410122199804021255', '18758562515', '', '', '', '201805021014085ae98f70d0855', '2018-05-02 18:02', '1', '["php"]', '2018-05-02 18:14', '', 0, 0, 0, 0, 0, 0, '', 1, 0),
(19, '呼呼', '123456', '男', '2018-05-03', '421302199901055578', '15997862247', 'asda', '12558999', '', '201805021616235ae9e457ddbf5', '2018-05-03 00:11', '1', '["js"]', '2018-05-03 0:16', '', 0, 0, 0, 0, 0, 0, '', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`AdministratorsID`);

--
-- Indexes for table `chatingbox`
--
ALTER TABLE `chatingbox`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`ContractorID`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `administrators`
--
ALTER TABLE `administrators`
  MODIFY `AdministratorsID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `chatingbox`
--
ALTER TABLE `chatingbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- 使用表AUTO_INCREMENT `companies`
--
ALTER TABLE `companies`
  MODIFY `ID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `contractor`
--
ALTER TABLE `contractor`
  MODIFY `ContractorID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '发包人员ID', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `email`
--
ALTER TABLE `email`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=58;
--
-- 使用表AUTO_INCREMENT `log`
--
ALTER TABLE `log`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- 使用表AUTO_INCREMENT `project`
--
ALTER TABLE `project`
  MODIFY `ID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=69;
--
-- 使用表AUTO_INCREMENT `resource`
--
ALTER TABLE `resource`
  MODIFY `ID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=74;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(255) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '接包人员ID', AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
