//
//  ContractView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/29/25.
//

import SwiftUI

struct ContractView: View {
    @State var showingAlert = false
    var body: some View {
        ScrollView{
            VStack{
                Text("Welcome to The Campus: ")
                    .font(.system(size: 22))
                    .bold()
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
                    
                        
                        Text("Your Digital Evolution")
                            .font(.system(size: 22))
                            .bold()
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            .onAppear{
                                showingAlert = true
                            }
                        
                        Text("Experience the next frontier of human existence through The Campus's revolutionary digital conversion service. Our groundbreaking technology offers you immortality in the virtual realm through a seamless, painless process.")
                        
                        Text("The Conversion Process")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Text("Using CRS's proprietary optic transfer application, we perform a comprehensive neural network scan that captures the essence of who you are. This non-invasive procedure transforms your consciousness into a secure, encrypted .self file, preserving your memories and experiences for eternity.")
                        Text("Your New Virtual Life")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Text("Our patented AI Environment Stability Engine ensures your digital self thrives in its new virtual home called the Campus. The engine actively maintains your psychological well-being, motivation, and happiness, creating a perfect balance for your continued existence.")
                        Text("Features of Digital Conversion:")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Text("Painless neural network scanning technology Military-grade encryption for your .self file Perpetual preservation of memories and experiences AI-driven environment optimization Continuous emotional and psychological support")
                        Text("")
                        
                        Text("Note: All digital conversion procedures are subject to CRS safety protocols and regulations. Please review the disclaimer section for complete information about the process.")
                        Text("Financial Accessibility through ITES")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Text("At The Campus, we believe digital evolution should be accessible to everyone. Through our innovative Idle Time Employment System (ITES), we've made digital conversion achievable regardless of your financial situation.")
                        Text("How ITES Works")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        
                        Text("Qualified participants can have their conversion fees completely waived through ITES participation. Neural network competency assessments are conducted during the initial scanning process.")
                        Text("Dividend Structure")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        
                        Text("Personas meeting advanced neural network competency standards can earn dividends based on:Processing efficiency ratings")
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        
                        Text("Join the thousands of digital personas already benefiting from ITES. Your journey to digital immortality doesn't have to be limited by financial constraints.")
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        Text("Limited Time Opportunity: Project M Shot")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Text("SPECIAL ANNOUNCEMENT: Interstellar Digital Evolution Program")
                            .font(.system(size: 16))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        
                        Text("CRS is now accepting applications for Project M Shot - an unprecedented opportunity to have your digital persona transferred to an M class exoplanet. This exclusive program is perfect for pioneers who want their virtual selves to:")
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        
                        //List View
                        VStack(alignment: .leading){
                            Text("• Be among the first digital entities to explore an alien world")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Help establish the foundations of a new digital civilization")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Conduct groundbreaking research in an extraterrestrial environment")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Shape the future of human expansion beyond Earth")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            
                        }
                        
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                        Text("Space is limited. Apply now to secure your digital self's place in this historic mission.")
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Text("Contact your CRS representative today to begin your application for Project M Shot. The future of human consciousness awaits on distant shores.")
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        Text("IMPORTANT DISCLAIMER")
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                            .font(.system(size: 20))
                            .bold()
                            .foregroundStyle(Color.red)
                        Text("WARNING: Virtual Persona Conversion Services by CRS")
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        Text("Please read and acknowledge the following risks and limitations before proceeding with The Campus digital conversion:")
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        Text("Side effects may include but are not limited to:")
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        VStack(alignment: .leading){
                            Text("• Temporary or persistent paranoia")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Partial or complete memory loss")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Visual and auditory hallucinations")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Altered perception of reality")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                        }
                        .foregroundStyle(Color.red)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        
                        
                        
                        Text("Virtual Personas are autonomous data entities. Neither CRS nor The Campus bears any responsibility for:")
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 0))
                        VStack(alignment: .leading){
                            
                            
                            Text("• Damage caused by Personas in virtual spaces")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Improper conduct or behavior of Personas")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            Text("• Interactions between Personas and other virtual entities")
                                .padding(EdgeInsets(top: 3, leading: 0, bottom: 3, trailing: 0))
                            
                        }
                        .foregroundStyle(Color.red)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 10))
                        .multilineTextAlignment(.leading)
                        Text("RISK DISCLAIMER: Due to extreme distances involved in interstellar digital transfer, communication with Earth-based systems will be impossible. Your digital persona will be completely autonomous and unreachable once deployed. Review all standard CRS disclaimers plus interstellar addendum before proceeding.")
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        Text("• STRICTLY PROHIBITED: Direct contact between users and their Personas may trigger catastrophic recursive failures in The Campus AI engine. Maintain separation at all times.")
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                            .onAppear{
                                showingAlert = true
                            }
                
                        Text("By proceeding with conversion, you acknowledge these risks and agree to hold CRS and The Campus harmless from any resulting physical, psychological, or digital consequences.")
                            .padding()
//                            .alert("Important message", isPresented: $showingAlert) {
//                                        Button("OK", role: .cancel) { }
//                                    }
                            .alert(isPresented: $showingAlert) {
                                        Alert(title: Text("Important message"), message: Text("Please review our terms of service before starting your scanning process"), dismissButton: .default(Text("Continue")))
                                    }
                        
//                Button {
//                    print(seachLoc(location: 2, locations: locations))
//                    print("Hello")
//                } label: {
//                    Text("test find")
//                    
//                }

                
                
                        NavigationLink {
                            //  ScanView()
                           // ContentView(location: loc0000)
                            MyTabView()
                        } label: {
                            Text("I agree to the CRS terms of service")
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    .padding()
            }
            .navigationBarBackButtonHidden(true)
            .onAppear{
                playSound(sound: "theCampus3", type: "mp3")
                    
            }
        }
    }

#Preview {
    ContractView()
}
