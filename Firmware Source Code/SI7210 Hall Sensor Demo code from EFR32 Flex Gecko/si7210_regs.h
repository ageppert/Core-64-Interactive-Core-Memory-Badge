/***************************************************************************/
#ifndef __SI7210_REGS_H_
#define __SI7210_REGS_H_

/***************************************************************************/
/***************************************************************************/
#define SI7210_REG_ADDR_HREVID               0xC0  
#define SI7210_REG_ADDR_DSPSIGM              0xC1  
#define SI7210_REG_ADDR_DSPSIGL              0xC2  
#define SI7210_REG_ADDR_DSPSIGSEL            0xC3  
#define SI7210_REG_ADDR_POWER_CTRL           0xC4  
#define SI7210_REG_ADDR_ARAUTOINC            0xC5  
#define SI7210_REG_ADDR_CTRL1                0xC6  
#define SI7210_REG_ADDR_CTRL2                0xC7  
#define SI7210_REG_ADDR_SLTIME               0xC8  
#define SI7210_REG_ADDR_CTRL3                0xC9  
#define SI7210_REG_ADDR_A0                   0xCA  
#define SI7210_REG_ADDR_A1                   0xCB  
#define SI7210_REG_ADDR_A2                   0xCC  
#define SI7210_REG_ADDR_CTRL4                0xCD  
#define SI7210_REG_ADDR_A3                   0xCE  
#define SI7210_REG_ADDR_A4                   0xCF  
#define SI7210_REG_ADDR_A5                   0xD0  
#define SI7210_REG_ADDR_OTP_ADDR             0xE1  
#define SI7210_REG_ADDR_OTP_DATA             0xE2  
#define SI7210_REG_ADDR_OTP_CTRL             0xE3  
#define SI7210_REG_ADDR_TM_FG                0xE4  
/***************************************************************************/
#define SI7210_REG_HREVID_REVID_MASK         0x0F  
#define SI7210_REG_HREVID_REVID_SHIFT        0     
#define SI7210_REG_HREVID_CHIPID_MASK        0xF0  
#define SI7210_REG_HREVID_CHIPID_SHIFT       4     
#define SI7210_REG_POWER_CTRL_SLEEP_MASK     0x01  
#define SI7210_REG_POWER_CTRL_SLEEP_SHIFT    0     
#define SI7210_REG_POWER_CTRL_STOP_MASK      0x02  
#define SI7210_REG_POWER_CTRL_STOP_SHIFT     1     
#define SI7210_REG_POWER_CTRL_ONEBURST_MASK  0x04  
#define SI7210_REG_POWER_CTRL_ONEBURST_SHIFT 2     
#define SI7210_REG_POWER_CTRL_USESTORE_MASK  0x08  
#define SI7210_REG_POWER_CTRL_USESTORE_SHIFT 3     
#define SI7210_REG_POWER_CTRL_MEAS_MASK      0x80  
#define SI7210_REG_POWER_CTRL_MEAS_SHIFT     7     
#define SI7210_REG_CTRL1_SW_OP_MASK          0x7F  
#define SI7210_REG_CTRL1_SW_OP_SHIFT         0     
#define SI7210_REG_CTRL1_SW_LOW4FIELD_MASK   0x80  
#define SI7210_REG_CTRL1_SW_LOW4FIELD_SHIFT  7     
#define SI7210_REG_CTRL2_SW_HYST_MASK        0x3F  
#define SI7210_REG_CTRL2_SW_HYST_SHIFT       0     
#define SI7210_REG_CTRL2_SW_FIELDPOLSEL_MASK 0xC0  
#define SI7210_REG_CTRL2_SW_FIELDPOLSEL_SHIFT 6    
#define SI7210_REG_CTRL3_SLTIMEENA_MASK      0x01  
#define SI7210_REG_CTRL3_SLTIMEENA_SHIFT     0     
#define SI7210_REG_CTRL3_SLFAST_MASK         0x02  
#define SI7210_REG_CTRL3_SLFAST_SHIFT        1     
#define SI7210_REG_CTRL3_SW_TAMPER_MASK      0xFC  
#define SI7210_REG_CTRL3_SW_TAMPER_SHIFT     2     
#define SI7210_REG_OTP_CTRL_BUSY_MASK        0x01  
#define SI7210_REG_OTP_CTRL_BUSY_SHIFT       0     
#define SI7210_REG_OTP_CTRL_READ_EN_MASK     0x02  
#define SI7210_REG_OTP_CTRL_READ_EN_SHIFT    1     
/***************************************************************************/
#define SI7210_OTP_ADDR_CTRL1                0x04  
#define SI7210_OTP_ADDR_CTRL2                0x05  
#define SI7210_OTP_ADDR_SLTIME               0x06  
#define SI7210_OTP_ADDR_CTRL3                0x08  
#define SI7210_OTP_ADDR_POWER_UP_A0          0x09  
#define SI7210_OTP_ADDR_POWER_UP_A1          0x0A  
#define SI7210_OTP_ADDR_POWER_UP_A2          0x0B  
#define SI7210_OTP_ADDR_CTRL4                0x0C  
#define SI7210_OTP_ADDR_POWER_UP_A3          0x0D  
#define SI7210_OTP_ADDR_POWER_UP_A4          0x0E  
#define SI7210_OTP_ADDR_POWER_UP_A5          0x0F  
#define SI7210_OTP_ADDR_BASE_PART_NUMBER     0x14  
#define SI7210_OTP_ADDR_VARIANT              0x15  
#define SI7210_OTP_ADDR_SERIAL_NUMBER        0x18  
#define SI7210_OTP_ADDR_BPERVCAL             0x20  
#define SI7210_OTP_ADDR_COEFFS_20MT              0x21 
#define SI7210_OTP_ADDR_COEFFS_200MT             0x27 
#define SI7210_OTP_ADDR_COEFFS_20MT_NEODYMIUM    0x2D 
#define SI7210_OTP_ADDR_COEFFS_200MT_NEODYMIUM   0x33 
#define SI7210_OTP_ADDR_COEFFS_20MT_CERAMIC      0x39 
#define SI7210_OTP_ADDR_COEFFS_200MT_CERAMIC     0x3F 
#endif /* __SI7210_REGS_H_ */
