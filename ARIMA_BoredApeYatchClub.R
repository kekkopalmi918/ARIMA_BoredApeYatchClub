#####   CARICA   PACCHETTI   #### 

library(readr) 

library(dplyr) 

library(openxlsx) 

library(readxl) 

library(ggplot2) 

library(zoo) 

library(lubridate) 

library(knitr) 

library(tseries) 

library(forecast) 

#####   PREPARAZIONE DEI DATI   #### 

BAYC_mag_2021 <- read_csv("BAYC/BAYC_2021/BAYC_mag_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_mag_2021_1 <- read_csv("BAYC/BAYC_2021/BAYC_mag_2021(1).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_mag_2021_2 <- read_csv("BAYC/BAYC_2021/BAYC_mag_2021(2).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_mag_2021_3 <- read_csv("BAYC/BAYC_2021/BAYC_mag_2021(3).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_mag_2021_4 <- read_csv("BAYC/BAYC_2021/BAYC_mag_2021(4).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_mag_2021_5 <- read_csv("BAYC/BAYC_2021/BAYC_mag_2021(5).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_giu_2021 <- read_csv("BAYC/BAYC_2021/BAYC_giu_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_giu_2021_1 <- read_csv("BAYC/BAYC_2021/BAYC_giu_2021(1).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_giu_2021_2 <- read_csv("BAYC/BAYC_2021/BAYC_giu_2021(2).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_giu_2021_3 <- read_csv("BAYC/BAYC_2021/BAYC_giu_2021(3).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_giu_2021_4 <- read_csv("BAYC/BAYC_2021/BAYC_giu_2021(4).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_giu_2021_5 <- read_csv("BAYC/BAYC_2021/BAYC_giu_2021(5).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_lug_2021 <- read_csv("BAYC/BAYC_2021/BAYC_lug_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_lug_2021_1 <- read_csv("BAYC/BAYC_2021/BAYC_lug_2021(1).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_lug_2021_2 <- read_csv("BAYC/BAYC_2021/BAYC_lug_2021(2).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_ago_2021 <- read_csv("BAYC/BAYC_2021/BAYC_ago_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_ago_2021_1 <- read_csv("BAYC/BAYC_2021/BAYC_ago_2021(1).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_ago_2021_2 <- read_csv("BAYC/BAYC_2021/BAYC_ago_2021(2).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_set_2021 <- read_csv("BAYC/BAYC_2021/BAYC_set_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_ott_2021 <- read_csv("BAYC/BAYC_2021/BAYC_ott_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_nov_2021 <- read_csv("BAYC/BAYC_2021/BAYC_nov_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_dic_2021 <- read_csv("BAYC/BAYC_2021/BAYC_dic_2021.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_2021 <- bind_rows( 
  
  BAYC_mag_2021, 
  
  BAYC_mag_2021_1, 
  
  BAYC_mag_2021_2, 
  
  BAYC_mag_2021_3, 
  
  BAYC_mag_2021_4, 
  
  BAYC_mag_2021_5, 
  
  BAYC_giu_2021, 
  
  BAYC_giu_2021_1, 
  
  BAYC_giu_2021_2, 
  
  BAYC_giu_2021_3, 
  
  BAYC_giu_2021_4, 
  
  BAYC_giu_2021_5, 
  
  BAYC_lug_2021, 
  
  BAYC_lug_2021_1, 
  
  BAYC_lug_2021_2, 
  
  BAYC_ago_2021, 
  
  BAYC_ago_2021_1, 
  
  BAYC_ago_2021_2, 
  
  BAYC_set_2021, 
  
  BAYC_ott_2021, 
  
  BAYC_nov_2021, 
  
  BAYC_dic_2021) 

BAYC_2021_OpenSea <- BAYC_2021 %>% 
  
  filter(Market == "OpenSea") 

write.xlsx(BAYC_2021_OpenSea, "BAYC/BAYC_2021/BAYC_2021_OpenSea.xlsx", rowNames = FALSE) 

BAYC_2021 <- read_excel("BAYC/BAYC_2021/BAYC_2021.xlsx") 

BAYC_2021_clean <- BAYC_2021[complete.cases(BAYC_2021$Price), ] 

BAYC_2021_clean$Price <- as.numeric(gsub(",", "", BAYC_2021_clean$Price)) 

BAYC_2021_clean$Price <- BAYC_2021_clean$Price / 1000 

BAYC_2021_clean$Price <- round(BAYC_2021_clean$Price, 3) 

BAYC_2021_clean$Price <- sprintf("%.3f", BAYC_2021_clean$Price) 

colnames(BAYC_2021_clean)[colnames(BAYC_2021_clean) == "Price"] <- "Price (k)" 

BAYC_2021_clean <- BAYC_2021_clean[as.numeric(BAYC_2021_clean$`Price (k)`) != 0, ] 

BAYC_2021_clean$`Price (k)` <- as.numeric(gsub(",", "", BAYC_2021_clean$`Price (k)`)) 

write.xlsx(BAYC_2021_clean, "BAYC/BAYC_2021/BAYC_2021_clean.xlsx", rowNames = FALSE) 

BAYC_gen_2022 <- read_csv("BAYC/BAYC_2022/BAYC_gen_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_feb_2022 <- read_csv("BAYC/BAYC_2022/BAYC_feb_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_mar_2022 <- read_csv("BAYC/BAYC_2022/BAYC_mar_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_apr_2022 <- read_csv("BAYC/BAYC_2022/BAYC_apr_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_mag_2022 <- read_csv("BAYC/BAYC_2022/BAYC_mag_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_giu_2022 <- read_csv("BAYC/BAYC_2022/BAYC_giu_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_lug_2022 <- read_csv("BAYC/BAYC_2022/BAYC_lug_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_ago_2022 <- read_csv("BAYC/BAYC_2022/BAYC_ago_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_set_2022 <- read_csv("BAYC/BAYC_2022/BAYC_set_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_ott_2022 <- read_csv("BAYC/BAYC_2022/BAYC_ott_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_nov_2022 <- read_csv("BAYC/BAYC_2022/BAYC_nov_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_dic_2022 <- read_csv("BAYC/BAYC_2022/BAYC_dic_2022.csv",  
                          
                          col_types = cols(`Txn Hash` = col_skip(),  
                                           
                                           Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                           
                                           Action = col_skip(), Buyer = col_skip(),  
                                           
                                           NFT = col_skip(), Type = col_skip(),  
                                           
                                           Quantity = col_skip())) 

BAYC_dic_2022_1 <- read_csv("BAYC/BAYC_2022/BAYC_dic_2022(1).csv",  
                            
                            col_types = cols(`Txn Hash` = col_skip(),  
                                             
                                             Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                             
                                             Action = col_skip(), Buyer = col_skip(),  
                                             
                                             NFT = col_skip(), Type = col_skip(),  
                                             
                                             Quantity = col_skip())) 

BAYC_2022 <- bind_rows( 
  
  BAYC_gen_2022, 
  
  BAYC_feb_2022, 
  
  BAYC_mar_2022, 
  
  BAYC_apr_2022, 
  
  BAYC_mag_2022, 
  
  BAYC_giu_2022, 
  
  BAYC_lug_2022, 
  
  BAYC_ago_2022, 
  
  BAYC_set_2022, 
  
  BAYC_ott_2022, 
  
  BAYC_nov_2022, 
  
  BAYC_dic_2022, 
  
  BAYC_dic_2022_1) 

BAYC_2022_OpenSea <- BAYC_2022 %>% 
  
  filter(Market == "OpenSea") 

write.xlsx(BAYC_2022_OpenSea, "BAYC/BAYC_2022/BAYC_2022_OpenSea.xlsx", rowNames = FALSE) 

BAYC_2022 <- read_excel("BAYC/BAYC_2022/BAYC_2022.xlsx") 

BAYC_2022_clean <- BAYC_2022[complete.cases(BAYC_2022$Price), ] 

BAYC_2022_clean$Price <- as.numeric(gsub(",", "", BAYC_2022_clean$Price)) 

BAYC_2022_clean$Price <- BAYC_2022_clean$Price / 1000 

BAYC_2022_clean$Price <- round(BAYC_2022_clean$Price, 3) 

BAYC_2022_clean$Price <- sprintf("%.3f", BAYC_2022_clean$Price) 

colnames(BAYC_2022_clean)[colnames(BAYC_2022_clean) == "Price"] <- "Price (k)" 

BAYC_2022_clean <- BAYC_2022_clean[as.numeric(BAYC_2022_clean$`Price (k)`) != 0, ] 

BAYC_2022_clean$`Price (k)` <- as.numeric(gsub(",", "", BAYC_2022_clean$`Price (k)`)) 

write.xlsx(BAYC_2022_clean, "BAYC/BAYC_2022/BAYC_2022_clean.xlsx", rowNames = FALSE) 

BAYC_gen_2023 <- read_csv("BAYC/BAYC_2023/BAYC_gen_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_feb_2023 <- read_csv("BAYC/BAYC_2023/BAYC_feb_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_feb_2023_1 <- read_csv("BAYC/BAYC_2023/BAYC_feb_2023(1).csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                                    
                                                                                    Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                                    
                                                                                    Action = col_skip(), Buyer = col_skip(),  
                                                                                    
                                                                                    NFT = col_skip(), Type = col_skip(),  
                                                                                    
                                                                                    Quantity = col_skip())) 

BAYC_mar_2023 <- read_csv("BAYC/BAYC_2023/BAYC_mar_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_apr_2023 <- read_csv("BAYC/BAYC_2023/BAYC_apr_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_apr_2023_1 <- read_csv("BAYC/BAYC_2023/BAYC_apr_2023(1).csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                                    
                                                                                    Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                                    
                                                                                    Action = col_skip(), Buyer = col_skip(),  
                                                                                    
                                                                                    NFT = col_skip(), Type = col_skip(),  
                                                                                    
                                                                                    Quantity = col_skip())) 

BAYC_mag_2023 <- read_csv("BAYC/BAYC_2023/BAYC_mag_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_giu_2023 <- read_csv("BAYC/BAYC_2023/BAYC_giu_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_lug_2023 <- read_csv("BAYC/BAYC_2023/BAYC_lug_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_ago_2023 <- read_csv("BAYC/BAYC_2023/BAYC_ago_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_set_2023 <- read_csv("BAYC/BAYC_2023/BAYC_set_2023.csv", col_types = cols(`Txn Hash` = col_skip(),  
                                                                               
                                                                               Blockno = col_skip(), UnixTimestamp = col_skip(),  
                                                                               
                                                                               Action = col_skip(), Buyer = col_skip(),  
                                                                               
                                                                               NFT = col_skip(), Type = col_skip(),  
                                                                               
                                                                               Quantity = col_skip())) 

BAYC_2023 <- bind_rows( 
  
  BAYC_gen_2023, 
  
  BAYC_feb_2023, 
  
  BAYC_feb_2023_1, 
  
  BAYC_mar_2023, 
  
  BAYC_apr_2023, 
  
  BAYC_apr_2023_1, 
  
  BAYC_mag_2023, 
  
  BAYC_giu_2023, 
  
  BAYC_lug_2023, 
  
  BAYC_ago_2023, 
  
  BAYC_set_2023) 

BAYC_2023_OpenSea <- BAYC_2023 %>% 
  
  filter(Market == "OpenSea") 

write.xlsx(BAYC_2023_OpenSea, "BAYC/BAYC_2023/BAYC_2023_OpenSea.xlsx", rowNames = FALSE) 

BAYC_2023 <- read_excel("BAYC/BAYC_2023/BAYC_2023.xlsx") 

BAYC_2023_clean <- BAYC_2023[complete.cases(BAYC_2023$Price), ] 

BAYC_2023_clean$Price <- as.numeric(gsub(",", "", BAYC_2023_clean$Price)) 

BAYC_2023_clean$Price <- BAYC_2023_clean$Price / 1000 

BAYC_2023_clean$Price <- round(BAYC_2023_clean$Price, 3) 

BAYC_2023_clean$Price <- sprintf("%.3f", BAYC_2023_clean$Price) 

colnames(BAYC_2023_clean)[colnames(BAYC_2023_clean) == "Price"] <- "Price (k)" 

BAYC_2023_clean <- BAYC_2023_clean[as.numeric(BAYC_2023_clean$`Price (k)`) != 0, ] 

BAYC_2023_clean$`Price (k)` <- as.numeric(gsub(",", "", BAYC_2023_clean$`Price (k)`)) 

write.xlsx(BAYC_2023_clean, "BAYC/BAYC_2023/BAYC_2023_clean.xlsx", rowNames = FALSE) 

BAYC <- bind_rows( 
  
  BAYC_2021_clean, 
  
  BAYC_2022_clean, 
  
  BAYC_2023_clean) 

BAYC=subset(BAYC, !duplicated(BAYC)) 

BAYC$`DateTime (UTC)` <- as.Date(BAYC$`DateTime (UTC)`) 

colnames(BAYC)[colnames(BAYC) == "DateTime (UTC)"] <- "Date" 

BAYC_RarityRanking <- read_excel("BAYC/BAYC_RarityRanking.xlsx") 

BAYC <- merge(BAYC, BAYC_RarityRanking, by = "ID", all = TRUE) 

BAYC <- na.omit(BAYC) 

BAYC$ID <- as.factor(BAYC$ID) 

BAYC$Rank <- as.factor(BAYC$Rank) 

BAYC$Rarity <- as.factor(BAYC$Rarity) 

ETH_USD <- read_csv("BAYC/ETH_USD.csv", col_types = cols(Open = col_skip(),  
                                                         
                                                         High = col_skip(), Low = col_skip(),  
                                                         
                                                         `Adj Close` = col_skip())) 

ETH_USD$Date=as.Date(ETH_USD$Date) 

ETH_USD$Volume <- as.numeric(gsub(",", "", ETH_USD$Volume)) 

ETH_USD$Volume <- ETH_USD$Volume / 1000000000 

ETH_USD$Volume <- round(ETH_USD$Volume, 9) 

ETH_USD$Volume <- sprintf("%.9f", ETH_USD$Volume) 

ETH_USD$Volume <- as.numeric(gsub(",", "", ETH_USD$Volume)) 

ETH_USD <- ETH_USD %>% mutate(Close_L1 = lag(Close, 1)) 

ETH_USD <- ETH_USD %>% mutate(Volume_L1 = lag(Volume, 1)) 

ETH_USD=ETH_USD[, c("Date","Close","Close_L1","Volume","Volume_L1")] 

BAYC <- merge(BAYC, ETH_USD, by = "Date", all = TRUE) 

View(BAYC) 

colnames(BAYC)[colnames(BAYC) == "Close"] <- "Close ETH ($)" 

colnames(BAYC)[colnames(BAYC) == "Close_L1"] <- "Close ETH_L1 ($)" 

colnames(BAYC)[colnames(BAYC) == "Volume"] <- "Volume ETH (B)" 

colnames(BAYC)[colnames(BAYC) == "Volume_L1"] <- "Volume ETH_L1 (B)" 

BAYC_MITICO=subset(BAYC, Rarity == "MITICO") 

BAYC_LEGGENDARIO=subset(BAYC, Rarity == "LEGGENDARIO") 

BAYC_EPICO=subset(BAYC, Rarity == "EPICO") 

BAYC_RARO=subset(BAYC, Rarity == "RARO") 

BAYC_NON_COMUNE=subset(BAYC, Rarity == "NON COMUNE") 

BAYC_COMUNE=subset(BAYC, Rarity == "COMUNE") 

which(BAYC_NON_COMUNE$`Price (k)`>800) 

BAYC_NON_COMUNE[c(6012,6272),"Price (k)"] 

mean(c(mean(BAYC_NON_COMUNE[(6012-3):(6012-1),"Price (k)"]),mean(BAYC_NON_COMUNE[(6012+1):(6012+3),"Price (k)"]))) 

mean(c(mean(BAYC_NON_COMUNE[(6272-3):(6272-1),"Price (k)"]),mean(BAYC_NON_COMUNE[(6272+1):(6272+3),"Price (k)"]))) 

which(BAYC$Rarity == "NON COMUNE" & BAYC$`Price (k)` > 800) 

BAYC[22335,"Price (k)"] 

BAYC[23269,"Price (k)"] 

BAYC[22335,"Price (k)"]=mean(c(mean(BAYC_NON_COMUNE[(6012-3):(6012-1),"Price (k)"]),mean(BAYC_NON_COMUNE[(6012+1):(6012+3),"Price (k)"]))) 

BAYC[23269,"Price (k)"]=mean(c(mean(BAYC_NON_COMUNE[(6272-3):(6272-1),"Price (k)"]),mean(BAYC_NON_COMUNE[(6272+1):(6272+3),"Price (k)"]))) 

which(BAYC_COMUNE$`Price (k)`>1000) 

BAYC_COMUNE[c(6073,6851),"Price (k)"] 

mean(c(mean(BAYC_COMUNE[(6073-3):(6073-1),"Price (k)"]),mean(BAYC_COMUNE[(6073+1):(6073+3),"Price (k)"]))) 

mean(c(mean(BAYC_COMUNE[(6851-3):(6851-1),"Price (k)"]),mean(BAYC_COMUNE[(6851+1):(6851+3),"Price (k)"]))) 

which(BAYC$Rarity == "COMUNE" & BAYC$`Price (k)` > 1000) 

BAYC[20338,"Price (k)"] 

BAYC[22876,"Price (k)"] 

BAYC[20338,"Price (k)"]=mean(c(mean(BAYC_COMUNE[(6073-3):(6073-1),"Price (k)"]),mean(BAYC_COMUNE[(6073+1):(6073+3),"Price (k)"]))) 

BAYC[22876,"Price (k)"]=mean(c(mean(BAYC_COMUNE[(6851-3):(6851-1),"Price (k)"]),mean(BAYC_COMUNE[(6851+1):(6851+3),"Price (k)"]))) 

which(BAYC_LEGGENDARIO$`Price (k)`>1000) 

mean(BAYC_LEGGENDARIO[c(426,437,456,466,468,479,504,522,524,555,556,603,609),"Price (k)"]) 

which(BAYC_LEGGENDARIO$`Price (k)`>1000 & BAYC_LEGGENDARIO$`Close ETH ($)`<1504.92) 

BAYC_LEGGENDARIO[609,"Price (k)"] 

mean(c(mean(BAYC_LEGGENDARIO[(609-3):(609-1),"Price (k)"]),mean(BAYC_LEGGENDARIO[(609+1):(609+3),"Price (k)"]))) 

which(BAYC$Rarity == "LEGGENDARIO" & BAYC$`Price (k)` > 1000 & BAYC$`Close ETH ($)`<1504.92) 

BAYC[22989,"Price (k)"] 

BAYC[22989,"Price (k)"]=mean(c(mean(BAYC_LEGGENDARIO[(609-3):(609-1),"Price (k)"]),mean(BAYC_LEGGENDARIO[(609+1):(609+3),"Price (k)"]))) 

#####   ANALISI DESCRITTIVA #### 

summary(BAYC) 

summary(BAYC$Date) 

barplot(table(BAYC$Date), main="Distribuzione delle Transazioni per Data", xlab="Data", ylab="Frequenza", col="lightblue") 

round((sum(BAYC$Date == "2021-05-01")/length(BAYC$Date))*100, 2) 

round((sum(BAYC$Date == "2021-05-01")/length(BAYC$Date))*100, 2)+round((sum(BAYC$Date == "2021-05-02")/length(BAYC$Date))*100, 2)+round((sum(BAYC$Date == "2021-05-03")/length(BAYC$Date))*100, 2) 

round((sum(BAYC$Date >= "2021-05-01" & BAYC$Date <= "2021-08-01")/length(BAYC$Date))*100, 2) 

round((sum(format(BAYC$Date, "%Y") == "2021")/length(BAYC$Date))*100, 2) 

round((sum(format(BAYC$Date, "%Y") == "2023")/length(BAYC$Date))*100, 2) 

round((sum(BAYC$Date >= "2023-06-01" & BAYC$Date <= "2023-09-12")/length(BAYC$Date))*100, 2) 

plot(BAYC$Date, BAYC$`Price (k)`, type="l", main="Prezzo Medio delle Transazioni per Data",  
     
     xlab="Data", ylab="Prezzo (k)") 

boxplot(BAYC$`Price (k)` ~ as.factor(format(BAYC$Date, "%Y")),  
        
        main="Boxplot dei Prezzi delle Transazioni (per Anno)", xlab="Anno", ylab="Prezzo (k)", col="lightblue") 

boxplot(BAYC$`Price (k)` ~ as.factor(format(BAYC$Date, "%Y-%m")),  
        
        main="Boxplot dei Prezzi delle Transazioni (per Mese)", xlab="Mese", ylab="Prezzo (k)", col="lightblue") 

summary(BAYC$ID) 

barplot(table(BAYC$ID), main="Distribuzione delle Transazioni per ID", xlab="ID", ylab="Frequenza") 

round(prop.table(table(table(BAYC$ID)))*100, 2) 

summary(BAYC$`Price (k)`) 

hist(BAYC$`Price (k)`, breaks = 20, col = "lightblue", main = "Distribuzione dei Prezzi degli NFT", xlab = "Prezzo (k)", ylab = "Frequenza") 

round((nrow(BAYC[BAYC$`Price (k)` <= 500, ])/nrow(BAYC))*100, 2) 

round((nrow(BAYC[BAYC$`Price (k)` <= 400, ])/nrow(BAYC))*100, 2) 

boxplot(BAYC$`Price (k)`, col = "lightblue", main = "Boxplot dei Prezzi degli NFT", ylab = "Prezzo (k)") 

plot(ecdf(BAYC$`Price (k)`), col = "lightblue", main = "Distribuzione Cumulativa dei Prezzi degli NFT", xlab = "Prezzo (k)", ylab = "Probabilità Cumulativa") 

summary(BAYC$Rarity) 

round(prop.table(table(BAYC$Rarity)) * 100, 2) 

barplot(table(BAYC$Rarity), col = "lightblue", main = "Distribuzione della Rarità", xlab = "Rarità", ylab = "Frequenza") 

pie(prop.table(table(BAYC$Rarity)) * 100, labels = names(prop.table(table(BAYC$Rarity)) * 100), main = "Grafico a Torta della Rarità") 

boxplot(BAYC$`Price (k)` ~ BAYC$Rarity, col = "lightblue", main = "Boxplot dei Prezzi degli NFT (per Rarità)", xlab = "Rarità", ylab = "Prezzo (k)") 

tapply(BAYC$`Price (k)`, BAYC$Rarity, mean) 

tapply(BAYC$`Price (k)`, BAYC$Rarity, sd) 

summary(BAYC$`Close ETH ($)`) 

ggplot(BAYC, aes(x = Date, y = `Close ETH ($)`)) + 
  
  geom_line() + 
  
  labs(title = "Serie Storica dei Prezzi Close di Ether", x = "Data", y = "Prezzo Close ($)") + 
  
  theme_minimal() 

mean(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2021"]) 

mean(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2022"]) 

mean(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2023"]) 

sd(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2021"]) 

sd(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2022"]) 

sd(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2023"]) 

sd(BAYC$`Close ETH ($)`) 

ggplot(BAYC, aes(x = Date, y = c(0, diff(`Close ETH ($)`)))) + 
  
  geom_line() + 
  
  labs(title = "Differenze Giornaliere nei Prezzi Close di Ether", x = "Data", y = "Differenza Giornaliera ($)") + 
  
  theme_minimal() 

mean(diff(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2021"]), na.rm = TRUE) 

mean(diff(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2022"]), na.rm = TRUE) 

mean(diff(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2023"]), na.rm = TRUE) 

mean(diff(BAYC$`Close ETH ($)`), na.rm = TRUE) 

sd(diff(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2021"]), na.rm = TRUE) 

sd(diff(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2022"]), na.rm = TRUE) 

sd(diff(BAYC$`Close ETH ($)`[substr(BAYC$`Date`, 1, 4) == "2023"]), na.rm = TRUE) 

sd(diff(BAYC$`Close ETH ($)`, na.rm = TRUE)) 

ggplot(data = BAYC, aes(x = format(Date, "%Y"), y = `Close ETH ($)`)) + 
  
  geom_boxplot() + 
  
  labs(title = "Boxplot dei Prezzi Close di Ether (per Anno)", 
       
       x = "Anno", 
       
       y = "Prezzo Close ($)") 

summary(BAYC$`Volume ETH (B)`) 

ggplot(na.omit(BAYC %>% 
                 
                 group_by(Date) %>% 
                 
                 summarize(Average_Volume = mean(`Volume ETH (B)`))), aes(x = Date, y = Average_Volume)) + 
  
  geom_bar(stat = "identity", fill = "blue") + 
  
  labs( 
    
    title = "Volume Medio di Ether per Data", 
    
    x = "Data", 
    
    y = "Volume Medio (B)" 
    
  ) + 
  
  theme_minimal() + 
  
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 

ggplot(BAYC, aes(x = factor(substr(Date, 1, 4)), y = `Volume ETH (B)`)) + 
  
  geom_boxplot(fill = "lightblue") + 
  
  labs( 
    
    title = "Boxplot del Volume di Ether (per Anno)", 
    
    x = "Anno", 
    
    y = "Volume (B)" 
    
  ) + 
  
  theme_minimal() 

ggplot(na.omit(BAYC), aes(x = `Rarity`, y = `Volume ETH (B)`, fill = `Rarity`)) + 
  
  geom_bar(stat = "identity") + 
  
  labs( 
    
    title = "Volume di BAYC per Livello di Rarità", 
    
    x = "Rarità", 
    
    y = "Volume (B)" 
    
  ) + 
  
  theme_minimal() 

mean(BAYC$`Volume ETH (B)`[substr(BAYC$`Date`, 1, 4) == "2021"]) 

mean(BAYC$`Volume ETH (B)`[substr(BAYC$`Date`, 1, 4) == "2022"]) 

mean(BAYC$`Volume ETH (B)`[substr(BAYC$`Date`, 1, 4) == "2023"]) 

mean(BAYC$`Volume ETH (B)`) 

sd(BAYC$`Volume ETH (B)`[substr(BAYC$`Date`, 1, 4) == "2021"]) 

sd(BAYC$`Volume ETH (B)`[substr(BAYC$`Date`, 1, 4) == "2022"]) 

sd(BAYC$`Volume ETH (B)`[substr(BAYC$`Date`, 1, 4) == "2023"]) 

sd(BAYC$`Volume ETH (B)`) 

#####   ANALISI   #### 

model_BAYC=lm(`Price (k)`~ `Close ETH ($)`+`Volume ETH (B)`,data=BAYC) 

model_BAYC_Close_L1=lm(`Price (k)`~ `Close ETH_L1 ($)`+`Volume ETH (B)`,data=BAYC) 

model_BAYC_Volume_L1=lm(`Price (k)`~ `Close ETH ($)`+`Volume ETH_L1 (B)`,data=BAYC) 

model_BAYC_L1=lm(`Price (k)`~ `Close ETH_L1 ($)`+`Volume ETH_L1 (B)`,data=BAYC) 

knitr::kable(data.frame(Model = c("Close ETH      + Volume ETH", "Close ETH (L1) + Volume ETH", "Close ETH      + Volume ETH (L1)", "Close ETH (L1) + Volume ETH (L1)"),  
                        
                        `Adjusted R-squared` = c(summary(model_BAYC)$adj.r.squared, summary(model_BAYC_Close_L1)$adj.r.squared, summary(model_BAYC_Volume_L1)$adj.r.squared, summary(model_BAYC_L1)$adj.r.squared),  
                        
                        `p-value` = c(((summary(model_BAYC))$coefficients[2,4] + (summary(model_BAYC))$coefficients[3,4]),  
                                      
                                      ((summary(model_BAYC_Close_L1))$coefficients[2,4] + (summary(model_BAYC_Close_L1))$coefficients[3,4]),  
                                      
                                      ((summary(model_BAYC_Volume_L1))$coefficients[2,4] + (summary(model_BAYC_Volume_L1))$coefficients[3,4]),  
                                      
                                      (summary(model_BAYC_L1))$coefficients[2,4] + (summary(model_BAYC_L1))$coefficients[3,4])),format = "markdown") 

knitr::kable(data.frame(Variabile = c("Close  ETH (L1)", "Volume ETH"),  
                        
                        `Coefficiente` = c(summary(model_BAYC_Close_L1)$coefficients[2,1], summary(model_BAYC_Close_L1)$coefficients[3,1]),  
                        
                        `p-value` = c((summary(model_BAYC_Close_L1))$coefficients[2,4], (summary(model_BAYC_Close_L1))$coefficients[3,4])), format = "markdown") 

#####   ANALISI PER RARITA'  #### 

ggplot(data = na.omit(BAYC), aes(x = `Close ETH_L1 ($)`, y = `Price (k)`, color = Rarity)) + 
  
  geom_point() + 
  
  labs( 
    
    title = "Scatterplot tra Prezzi degli NFT e Prezzi di Ether (L1)", 
    
    x = "Prezzi ETH_L1 ($)", 
    
    y = "Prezzi NFT (k)", 
    
    color = "Rarità" 
    
  ) + 
  
  facet_wrap(~Rarity, scales = "free") 

ggplot(data = na.omit(BAYC), aes(x = `Volume ETH (B)`, y = `Price (k)`, color = Rarity)) + 
  
  geom_point() + 
  
  labs( 
    
    title = "Scatterplot tra Prezzi degli NFT e Volume di Ether", 
    
    x = "Volume ETH (B)", 
    
    y = "Prezzi NFT (k)", 
    
    color = "Rarità" 
    
  ) + 
  
  facet_wrap(~Rarity, scales = "free") 

model_MITICO <- lm(`Price (k)` ~ `Close ETH_L1 ($)` + `Volume ETH (B)`, data = BAYC_MITICO) 

model_LEGGENDARIO <- lm(`Price (k)` ~ `Close ETH_L1 ($)` + `Volume ETH (B)`, data = BAYC_LEGGENDARIO) 

model_EPICO <- lm(`Price (k)` ~ `Close ETH_L1 ($)` + `Volume ETH (B)`, data = BAYC_EPICO) 

model_RARO <- lm(`Price (k)` ~ `Close ETH_L1 ($)` + `Volume ETH (B)`, data = BAYC_RARO) 

model_NON_COMUNE <- lm(`Price (k)` ~ `Close ETH_L1 ($)` + `Volume ETH (B)`, data = BAYC_NON_COMUNE) 

model_COMUNE <- lm(`Price (k)` ~ `Close ETH_L1 ($)` + `Volume ETH (B)`, data = BAYC_COMUNE) 

knitr::kable(data.frame(Model = c("MITICO", "LEGGENDARIO", "EPICO", "RARO", "NON COMUNE", "COMUNE"), 
                        
                        `Adjusted R-squared` = c(summary(model_MITICO)$adj.r.squared,summary(model_LEGGENDARIO)$adj.r.squared,summary(model_EPICO)$adj.r.squared,summary(model_RARO)$adj.r.squared,summary(model_NON_COMUNE)$adj.r.squared,summary(model_COMUNE)$adj.r.squared), 
                        
                        `p-value` = c(summary(model_MITICO)$coefficients[2, 4] + summary(model_MITICO)$coefficients[3, 4],summary(model_LEGGENDARIO)$coefficients[2, 4] + summary(model_LEGGENDARIO)$coefficients[3, 4],summary(model_EPICO)$coefficients[2, 4] + summary(model_EPICO)$coefficients[3, 4],summary(model_RARO)$coefficients[2, 4] + summary(model_RARO)$coefficients[3, 4],summary(model_NON_COMUNE)$coefficients[2, 4] + summary(model_NON_COMUNE)$coefficients[3, 4],summary(model_COMUNE)$coefficients[2, 4] + summary(model_COMUNE)$coefficients[3, 4])),format = "markdown") 

knitr::kable(data.frame(Rarità = c("MITICO", "MITICO"), Variabile = c("Close  ETH_L1", "Volume ETH"),  
                        
                        `Coefficiente` = c((summary(model_MITICO))$coefficients[2,1], (summary(model_MITICO))$coefficients[3,1]),  
                        
                        `p-value` = c(((summary(model_MITICO))$coefficients[2,4] + (summary(model_MITICO))$coefficients[3,4]),  
                                      
                                      ((summary(model_MITICO))$coefficients[2,4] + (summary(model_MITICO))$coefficients[3,4]))), format = "markdown") 

knitr::kable(data.frame(Rarità = c("LEGGENDARIO", "LEGGENDARIO"), Variabile = c("Close  ETH_L1", "Volume ETH"),  
                        
                        `Coefficiente` = c((summary(model_LEGGENDARIO))$coefficients[2,1], (summary(model_LEGGENDARIO))$coefficients[3,1]),  
                        
                        `p-value` = c(((summary(model_LEGGENDARIO))$coefficients[2,4] + (summary(model_LEGGENDARIO))$coefficients[3,4]),  
                                      
                                      ((summary(model_LEGGENDARIO))$coefficients[2,4] + (summary(model_LEGGENDARIO))$coefficients[3,4]))), format = "markdown") 

knitr::kable(data.frame(Rarità = c("EPICO", "EPICO"), Variabile = c("Close  ETH_L1", "Volume ETH"),  
                        
                        `Coefficiente` = c((summary(model_EPICO))$coefficients[2,1], (summary(model_EPICO))$coefficients[3,1]),  
                        
                        `p-value` = c(((summary(model_EPICO))$coefficients[2,4] + (summary(model_EPICO))$coefficients[3,4]),  
                                      
                                      ((summary(model_EPICO))$coefficients[2,4] + (summary(model_EPICO))$coefficients[3,4]))), format = "markdown") 

knitr::kable(data.frame(Rarità = c("RARO", "RARO"), Variabile = c("Close  ETH_L1", "Volume ETH"),  
                        
                        `Coefficiente` = c((summary(model_RARO))$coefficients[2,1], (summary(model_RARO))$coefficients[3,1]),  
                        
                        `p-value` = c(((summary(model_RARO))$coefficients[2,4] + (summary(model_RARO))$coefficients[3,4]),  
                                      
                                      ((summary(model_RARO))$coefficients[2,4] + (summary(model_RARO))$coefficients[3,4]))), format = "markdown") 

knitr::kable(data.frame(Rarità = c("NON COMUNE", "NON COMUNE"), Variabile = c("Close  ETH_L1", "Volume ETH"),  
                        
                        `Coefficiente` = c((summary(model_NON_COMUNE))$coefficients[2,1], (summary(model_NON_COMUNE))$coefficients[3,1]),  
                        
                        `p-value` = c(((summary(model_NON_COMUNE))$coefficients[2,4] + (summary(model_NON_COMUNE))$coefficients[3,4]),  
                                      
                                      ((summary(model_NON_COMUNE))$coefficients[2,4] + (summary(model_NON_COMUNE))$coefficients[3,4]))), format = "markdown") 

knitr::kable(data.frame(Rarità = c("COMUNE", "COMUNE"), Variabile = c("Close  ETH_L1", "Volume ETH"),  
                        
                        `Coefficiente` = c((summary(model_COMUNE))$coefficients[2,1], (summary(model_COMUNE))$coefficients[3,1]),  
                        
                        `p-value` = c(((summary(model_COMUNE))$coefficients[2,4] + (summary(model_COMUNE))$coefficients[3,4]),  
                                      
                                      ((summary(model_COMUNE))$coefficients[2,4] + (summary(model_COMUNE))$coefficients[3,4]))), format = "markdown") 

#####   ANALISI CLASSICA  #### 

serie_BAYC <- na.omit(BAYC)[, c("Date","Price (k)","Close ETH ($)","Close ETH_L1 ($)","Volume ETH (B)","Volume ETH_L1 (B)")] 

serie_BAYC <- serie_BAYC %>% 
  
  group_by(Date) %>% 
  
  summarise_all(list(mean)) 

View(serie_BAYC) 

yt=ts(serie_BAYC$`Price (k)`, frequency = 365, start = c(2021,5,2)) 

plot(yt, main = "Serie Storica dei Prezzi degli NFT", xlab="Data",ylab="Prezzo (k)") 

modCla=tslm(yt ~ trend) 

summary(modCla) 

modCla2=tslm(yt ~ trend + I(trend^2)) 

summary(modCla2) 

modCla3=tslm(yt ~ trend + I(trend^2) + I(trend^3)) 

summary(modCla3) 

knitr::kable(data.frame(Modello = c("Trend", "I(Trend^2)", "I(Trend^3)"),  
                        
                        `Adjusted R-squared` = c(summary(modCla)$adj.r.squared, summary(modCla2)$adj.r.squared, summary(modCla3)$adj.r.squared),  
                        
                        `p-value` = c(((summary(modCla))$coefficients[2,4]),  
                                      
                                      ((summary(modCla2))$coefficients[2,4]),  
                                      
                                      (summary(modCla3))$coefficients[2,4])),format = "markdown") 

knitr::kable(data.frame(Variabile = c("Trend", "I(Trend^2)", "I(Trend^3)"), 
                        
                        `Coefficiente` = c(summary(modCla3)$coefficients[2, 1], 
                                           
                                           summary(modCla3)$coefficients[3, 1], 
                                           
                                           summary(modCla3)$coefficients[4, 1]), 
                        
                        `p-value` = c(summary(modCla3)$coefficients[2, 4], 
                                      
                                      summary(modCla3)$coefficients[3, 4], 
                                      
                                      summary(modCla3)$coefficients[4, 4])), format = "markdown") 

plot(yt, main = "Serie Storica dei Prezzi degli NFT (Trend^3)", xlab="Data",ylab="Prezzo (k)") 

lines(modCla3$fitted.values, col="blue") 

#####   ANALISI MODERNA   #### 

Acf(yt,50, main="Correlogramma globale di yt") 

Dyt=diff(yt) 

plot(Dyt) 

Acf(Dyt,50, main="Correlogramma globale di Dyt") 

par(mfrow=c(2,1)) 

Acf(Dyt) 

Pacf(Dyt) 

Acf(Dyt,50, main="Correlogramma globale di Dyt") 

Pacf(Dyt,50, main="Correlogramma parziale di Dyt") 

modARIMA=Arima(yt, c(0,1,1)) 

summary(modARIMA) 

coefSTAT=modARIMA$coef/sqrt(diag(modARIMA$var.coef)) 

coefSTAT 

T=length(yt) 

r=length(modARIMA$coef)+1 

pval=2*(1-pt(abs(coefSTAT), T-r)) 

pval 

resARIMA=modARIMA$residuals 

Acf(resARIMA,50, main="Correlogramma globale resARIMA") 

Pacf(resARIMA,50, main="Correlogramma parziale resARIMA") 

par(mfrow=c(1,1)) 

plot(yt, main = "Serie Storica dei Prezzi degli NFT (ARIMA)", xlab="Data",ylab="Prezzo (k)") 

lines(modARIMA$fitted, col="red") 

summary(modARIMA) 

sqrt(mean((yt-modCla3$fitted.values)^2)) 

mean(abs(yt-modCla3$fitted.values)) 

plot(yt, main="Serie Storica dei Prezzi degli NFT (Trend^3 + ARIMA)", xlab="Data",ylab="Prezzo (k)",lwd=2) 

lines(modCla3$fitted.values, col="blue", lwd=2) 

lines(modARIMA$fitted, col="red", lwd=2) 

#####   MODELLO ARIMAX   #### 

modARIMAX=Arima(yt, c(0,1,1), xreg= serie_BAYC$`Close ETH ($)`) 

summary(modARIMAX) 

modARIMAX=Arima(yt, c(0,1,1), xreg= serie_BAYC$`Close ETH_L1 ($)`) 

summary(modARIMAX) 

modARIMAX=Arima(yt, c(0,1,1), xreg= serie_BAYC$`Volume ETH (B)`) 

summary(modARIMAX) 

modARIMAX=Arima(yt, c(0,1,1), xreg= serie_BAYC$`Volume ETH_L1 (B)`) 

summary(modARIMAX) 

modARIMAX=Arima(yt, c(0,1,1), xreg= cbind(serie_BAYC$`Close ETH ($)`,serie_BAYC$`Volume ETH (B)`)) 

summary(modARIMAX) 

modARIMAX=Arima(yt, c(0,1,1), xreg= cbind(serie_BAYC$`Close ETH_L1 ($)`,serie_BAYC$`Volume ETH (B)`)) 

summary(modARIMAX) 

modARIMAX=Arima(yt, c(0,1,1), xreg= cbind(serie_BAYC$`Close ETH ($)`,serie_BAYC$`Volume ETH_L1 (B)`)) 

summary(modARIMAX) 

modARIMAX=Arima(yt, c(0,1,1), xreg= cbind(serie_BAYC$`Close ETH_L1 ($)`,serie_BAYC$`Volume ETH_L1 (B)`)) 

summary(modARIMAX) 

xreg=cbind(serie_BAYC$`Close ETH ($)`,serie_BAYC$`Volume ETH (B)`) 

modARIMAX=Arima(yt, c(0,1,1), xreg=xreg) 

summary(modARIMAX) 

coefSTATX=modARIMAX$coef/sqrt(diag(modARIMAX$var.coef)) 

coefSTATX 

T=length(yt) 

r=length(modARIMAX$coef)+1 

pval=2*(1-pt(abs(coefSTATX), T-r)) 

pval 

resARIMAX=modARIMAX$residuals 

par(mfrow=c(2,1)) 

Acf(resARIMAX,50, main="Correlogramma globale resARIMAX") 

Pacf(resARIMAX,50, main="Correlogramma parziale resARIMAX") 

par(mfrow=c(1,1)) 

plot(yt, main = "Serie Storica dei Prezzi degli NFT (ARIMAX)", xlab="Data",ylab="Prezzo (k)") 

lines(modARIMAX$fitted, col="green") 

summary(modARIMA) 

summary(modARIMAX) 

plot(yt, main="Serie Storica dei Prezzi degli NFT (ARIMA + ARIMAX)", xlab="Data",ylab="Prezzo (k)",lwd=2) 

lines(modARIMA$fitted, col="red", lwd=2) 

lines(modARIMAX$fitted, col="green", lwd=2) 

#####   PREVISIONI   #### 

f_modARIMA=matrix(,117,1) 

for(i in 706:822) { 
  
  modARIMA=Arima(yt[1:i],c(0,1,1)) 
  
  f_modARIMA[i-705]=forecast(modARIMA,1)$mean} 

f_modARIMA 

plot(yt[707:823],type="l",main="Previsione dei Prezzi degli NFT (ARIMA)",xlab="Previsione (n)",ylab="Prezzo NFT ($)",lwd=2) 

lines(f_modARIMA,type="l",col="red",lwd=2) 

sqrt(mean((yt[707:823]-f_modARIMA)^2)) 

mean(abs((yt[707:823]-f_modARIMA))) 

xreg= cbind(serie_BAYC$`Close ETH_L1 ($)`,serie_BAYC$`Volume ETH_L1 (B)`) 

f_modARIMAX=matrix(,117,1) 

for(i in 706:822) { 
  
  modARIMAX=Arima(yt[1:i],c(0,1,1),xreg=xreg[1:i]) 
  
  f_modARIMAX[i-705]=forecast(modARIMAX,1,xreg=xreg[1+i])$mean} 

f_modARIMAX 

plot(yt[707:823],type="l",main="Previsione dei Prezzi degli NFT (ARIMAX)",xlab="Previsione (n)",ylab="Prezzo NFT ($)",lwd=2) 

lines(f_modARIMAX,type="l",col="green",lwd=2) 

sqrt(mean((yt[707:823]-f_modARIMAX)^2)) 

mean(abs((yt[707:823]-f_modARIMAX))) 

plot(yt[707:823],type="l",main="Previsione dei Prezzi degli NFT (ARIMA + ARIMAX)",xlab="Previsione (n)",ylab="Prezzo NFT ($)",lwd=2) 

lines(f_modARIMA,type="l",col="red",lwd=2) 

lines(f_modARIMAX,type="l",col="green",lwd=2) 