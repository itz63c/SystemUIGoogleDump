.class public abstract Lcom/google/android/systemui/dreamliner/WirelessCharger;
.super Ljava/lang/Object;
.source "WirelessCharger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;,
        Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asyncIsDockPresent(Lcom/google/android/systemui/dreamliner/WirelessCharger$IsDockPresentCallback;)V
.end method

.method public abstract challenge(B[BLcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V
.end method

.method public abstract getFanInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V
.end method

.method public abstract getInformation(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;)V
.end method

.method public abstract keyExchange([BLcom/google/android/systemui/dreamliner/WirelessCharger$KeyExchangeCallback;)V
.end method

.method public abstract registerAlignInfo(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V
.end method

.method public abstract setFan(BBILcom/google/android/systemui/dreamliner/WirelessCharger$SetFanCallback;)V
.end method
