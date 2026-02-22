//
//  ContentView.swift
//  modul3_2
//
//  Created by Julia Morozova on 20. 2. 2026..
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack(alignment: .top) {
            ScrollView {
                VStack(alignment: .leading, spacing: 27) {
                    VStack(spacing: 21) {
                        SearchView()
                    }

                    VStack(alignment: .leading, spacing: 20) {
                        HotelCard()
                        HotelCard()
                        HotelCard()
                        HotelCard()
                        HotelCard()
                        HotelCard()
                        HotelCard()
                    }

                }
                .padding(.horizontal, 25)
                .padding(.top, 70)
            }
            Header()
                .padding(.horizontal, 25)
                .padding(.bottom, 10)
                .background(.white)
        }
    }
}

struct Header: View {
    var body: some View {
        HStack {
            // Button back
            Button {
                //
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.darkGreyApp)
                    .padding(20)
                    .background(.appGrey)
                    .clipShape(Circle())
            }
            Spacer()

            // menu button
            Button {
                //
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 13)
                        .fill(.clear)
                        .stroke(.appGrey, lineWidth: 1)
                        .frame(width: 40, height: 40)
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
            }
        }
    }
}

struct SearchView: View {
    @State var text = ""
    var body: some View {
        HStack(spacing: 10) {
            HStack(spacing: 10) {
                Image(systemName: "magnifyingglass")
                    .frame(width: 20, height: 20)
                    .foregroundColor(.darkGreyApp)
                TextField("Search House, Apartment, etc", text: $text)
            }

            HStack(spacing: 15) {
                Divider()
                    .frame(height: 36)
                Button {
                    //
                } label: {
                    Image(systemName: "microphone")
                        .frame(width: 20, height: 20)
                        .foregroundColor(.mediumGreyApp)
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 17)
        .background(.appGrey)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct HotelCard: View {
    var body: some View {
        HStack(spacing: 20) {
            // картинка
            ZStack(alignment: .topTrailing) {
                Image(.hotel1)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Button {
                    //
                } label: {
                    Image(systemName: "bookmark.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 5, height: 5)
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                        .background(.white.opacity(0.4))
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(.appGrey, lineWidth: 1))
                        .clipShape(RoundedRectangle(cornerRadius: 5))


                }
                .frame(width: 44, height: 44)
            }

            // текст

            VStack(alignment: .leading, spacing: 10) {

                Text("Nacoa Apartment")
                    .font(.system(size: 16, weight: .bold))

                HStack(spacing: 5) {
                    Image(systemName: "mappin.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.appBlue)
                        .frame(width: 10, height: 13)
                    Text("Alexander City, Alabama.")
                        .font(.system(size: 11, weight: .regular))
                        .foregroundColor(.appTextGrey)
                }
                // room meta
                HStack(spacing: 17) {
                    HStack(spacing: 5) {
                        Image(systemName: "bed.double")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 11, height: 11)
                            .foregroundColor(.appTextGrey)

                        Text("5")
                            .font(.system(size: 9, weight: .bold))
                    }
                    HStack(spacing: 5) {
                        Image(systemName: "bathtub.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 11, height: 11)
                            .foregroundColor(.appTextGrey)

                        Text("3")
                            .font(.system(size: 9, weight: .bold))
                    }
                    HStack(spacing: 5) {
                        Image(systemName: "building.2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 11, height: 11)
                            .foregroundColor(.appTextGrey)

                        Text("850")
                            .font(.system(size: 9, weight: .bold))
                    }
                }

                //price

                HStack(alignment: .bottom) {
                    HStack(alignment: .bottom, spacing: 1) {
                        Text("$1599")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(.appBlue)
                        Text("/mo")
                            .font(.system(size: 9, weight: .regular))
                            .foregroundColor(.appTextGrey)
                    }
                    Spacer()

                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.orange)
                        Text("4.7")
                            .font(.system(size: 11, weight: .bold))

                    }
                }



            }
        }
        .padding(15)
        .overlay(RoundedRectangle(cornerRadius: 25).stroke(.appGrey, lineWidth: 3))
    }
}

#Preview {
    ContentView()
}
