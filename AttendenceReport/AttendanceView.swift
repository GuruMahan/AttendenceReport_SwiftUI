//
//  ContentView.swift
//  AttendenceReport
//
//  Created by Guru Mahan on 24/12/22.
//

import SwiftUI

//MARK: -> attendanceReportView
struct AttendanceView: View {
    //MARK: -> stateVariable
    @State var firstbutton: Bool = false
    @State var secondbutton: Bool = false
    @State var thirdbutton: Bool = false
    @State var fourthbutton: Bool = false
    
    //MARK: -> bodyView
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(hex: "1A7BDC"), Color(hex: "56B8FF")], startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            VStack {
                HStack{
                    Button{
                    } label: {
                        Image(systemName:"chevron.backward").foregroundColor(Color.white)
                            .font(Font.system(size: 25))
                    }
                    Label("Back", systemImage: "")
                        .foregroundColor(.white)
                        .padding(-11)
                    Spacer()
                    HStack{
                        searchButtonView
                            .frame(width: 40 ,height: 40)
                            .background(Color.white)
                    }
                    .cornerRadius(20)
                }
                .padding()
                VStack {
                    Label("P03 introducation to Anatomy", systemImage: "")
                        .foregroundColor(.white)
                    Label("Program ⦁ 3rd year ⦁ Level 4 ", systemImage: "")
                        .foregroundColor(.white)
                }
                .padding(.leading,-100)
                HStack {
                    completeButtonView
                    toStartButtonView
                    inProgressButtonView
                    allButtonView
                }
                .padding(.leading,0)
                Spacer()
                ZStack{
                    backgroundView
                        .frame(width: 400,height: 550)
                        .background(Color(uiColor: .lightGray))
                }
                .padding(.top,-10)
                .padding(.bottom,0)
            }
        }
    }
    
    //MARK: ->searchButtonView
    @ViewBuilder var searchButtonView: some View{
        Button{
        } label: {
            Image(systemName:"magnifyingglass").foregroundColor(Color.blue)
                .cornerRadius(50)
                .font(Font.system(size: 15))
        }
        .background(Color.white)
        .frame(width: 40,height: 40)
    }
    
    //MARK: ->completeButtonView
    @ViewBuilder var completeButtonView: some View{
        Button(action: {
            firstbutton.toggle()
            firstbutton = true
            secondbutton = false
            thirdbutton = false
            fourthbutton = false
        }) {
            Text("Completed").padding()
                .font(Font.system(size: 12))
                .background(firstbutton ? Color.white : Color(hex: "#c0c0c0"))
                .foregroundColor(Color(uiColor: .black))
                .frame(height: 40)
                .cornerRadius(20)
        }
    }
    
    //MARK: ->toStartButtonView
    @ViewBuilder var toStartButtonView: some View{
        Button(action: {
            secondbutton.toggle()
            secondbutton = true
            firstbutton = false
            thirdbutton = false
            fourthbutton = false
        }) {
            Text("To Start")
                .padding()
                .foregroundColor(Color(uiColor: .black))
                .font(Font.system(size: 12))
                .background(secondbutton ? Color.white : Color(hex: "#c0c0c0"))
                .frame(height: 40)
                .background(Color(hex: "#c0c0c0"))
                .cornerRadius(20)
        }
    }
    
    //MARK: ->inProgressButtonView
    @ViewBuilder var inProgressButtonView: some View{
        Button(action: {
            thirdbutton.toggle()
            firstbutton = false
            secondbutton = false
            thirdbutton = true
            fourthbutton = false
        }) {
            Text("In  Progress").padding()
                .foregroundColor(Color(uiColor: .black))
                .font(Font.system(size: 12))
                .background(thirdbutton ? Color.white : Color(hex: "#c0c0c0"))
                .frame(height: 40)
                .cornerRadius(20)
        }
    }
    
    //MARK: ->allButtonView
    @ViewBuilder var allButtonView: some View{
        Button(action: {
            fourthbutton.toggle()
            firstbutton = false
            secondbutton = false
            thirdbutton = false
            fourthbutton = true
        }) {
            Text("All").padding()
                .foregroundColor(Color(uiColor: .black))
                .font(Font.system(size: 12))
                .background(fourthbutton ? Color.white : Color(hex: "#c0c0c0"))
                .frame(height: 40)
                .cornerRadius(20)
        }
    }
    
    //MARK: ->backgroundView
    @ViewBuilder var backgroundView: some View{
        frontView
            .frame(width: 350,height: 500)
            .background(Color(hex: "#c0c0c0"))
            .padding()
    }
    
    //MARK: ->popUpView
    @ViewBuilder var popUpView: some View{
        VStack{
            HStack{
                VStack{
                    Text("Retake Attendance With")
                        .padding(.leading,-10)
                    Label("To validate student Attendence status", systemImage: "")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.leading,10)
                        .padding(.top,-3)
                }
                Spacer()
                Button {
                } label: {
                    Label("", systemImage: "xmark")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            Divider()
            HStack{
                VStack{
                    Button {
                    } label: {
                        VStack{
                            Label("Nearby student - For all",systemImage: "")
                                .padding(.leading,-115)
                                .foregroundColor(.black)
                            Label("Can able to Retake attendance for all Nearby students", systemImage: "")
                                .font(Font.system(size: 12))
                                .foregroundColor(.gray)
                                .padding(.leading,10)
                                .padding(.top,-3)
                        }
                    }
                }
                Spacer()
                Button {
                } label: {
                    Label("", systemImage: "chevron.forward")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            Divider()
            HStack{
                VStack{
                    Button {
                    } label: {
                        VStack{
                            Label("Nearby student - For Absentees",systemImage: "")
                                .foregroundColor(.black)
                                .padding(.leading,-16)
                            Label("By Buzzer attendance students will response to mark attendance", systemImage: "")
                                .font(Font.system(size: 12))
                                .foregroundColor(.gray)
                                .padding(.leading,10)
                                .padding(.top,-3)
                        }
                    }
                }
                Spacer()
                Button {
                } label: {
                    Label("", systemImage: "chevron.forward")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            Divider()
            HStack{
                VStack{
                    Button {
                    } label: {
                        VStack{
                            Label("Buzzer",systemImage: "bell.fill")
                                .foregroundColor(.black)
                                .padding(.leading,-130)
                            Label("By Buzzer attendance students will response to mark attendance", systemImage: "")
                                .font(Font.system(size: 12))
                                .foregroundColor(.gray)
                                .padding(.leading,10)
                                .padding(.top,-3)
                        }
                    }
                }
                Spacer()
                Button {
                } label: {
                    Label("", systemImage: "chevron.forward")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            Divider()
            HStack{
                VStack{
                    Button {
                    } label: {
                        VStack{
                            Label("Surprise Quiz",systemImage: "questionmark.circle.fill")
                                .foregroundColor(.black)
                                .padding(.leading,-130)
                            Label("By Buzzer attendance students will response to mark attendance", systemImage: "")
                                .font(Font.system(size: 12))
                                .foregroundColor(.gray)
                                .padding(.leading,10)
                                .padding(.top,-3)
                        }
                    }
                }
                Spacer()
                Button {
                } label: {
                    Label("", systemImage: "chevron.forward")
                        .foregroundColor(.black)
                        .padding()
                }
            }
            Divider()
        }
        .padding(.top,-20)
    }
    
    //MARK: ->frontView
    @ViewBuilder var frontView: some View{
        VStack {
            VStack{
                HStack{
                    Label("Session Details", systemImage: "")
                    Spacer()
                    ZStack{
                        Button {
                        } label: {
                            Text("More Info")
                            Image(systemName: "info.circle")
                        }
                    }
                    .frame(width: 120,height: 30)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue, lineWidth: 2))
                    .padding(.trailing,10)
                }
                .padding(.top,100)
                Divider()
                VStack{
                    Label("Sessoin timing", systemImage: "")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.trailing,250)
                    Label("7 Jan 10:00AM-11:00AM", systemImage: "")
                        .padding(.trailing,140)
                        .padding(.top,-3)
                    Label("Student group", systemImage: "")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                        .padding(.trailing,250)
                        .padding(.top,5)
                    Label("MG1 - G1( 50 Students )", systemImage: "")
                        .padding(.trailing,140)
                        .padding(.top,-3)
                }
            }
            popUpView
                .frame(width: 400,height: 400)
                .background(Color(uiColor: .white))
                .cornerRadius(15)
            Spacer()
        }
    }
}


//MARK: ->ContentView_Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AttendanceView()
    }
}

//MARK: ->colorExtension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
