.class public Lcom/android/systemui/charging/WirelessChargingAnimation;
.super Ljava/lang/Object;
.source "WirelessChargingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;,
        Lcom/android/systemui/charging/WirelessChargingAnimation$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;


# instance fields
.field private final mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WirelessChargingView"

    const/4 v1, 0x3

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V
    .locals 8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v7, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;-><init>(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V

    iput-object v7, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->DEBUG:Z

    return v0
.end method

.method public static makeWirelessChargingAnimation(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)Lcom/android/systemui/charging/WirelessChargingAnimation;
    .locals 8

    .line 71
    new-instance v7, Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/charging/WirelessChargingAnimation;-><init>(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;Z)V

    return-object v7
.end method


# virtual methods
.method public show(J)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->access$000(Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->hide(J)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    sput-object v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    .line 89
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->show(J)V

    .line 90
    iget-object p0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    const-wide/16 v0, 0x46d

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->hide(J)V

    return-void

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setView must have been called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
