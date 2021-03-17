.class Lcom/android/keyguard/KeyguardClockSwitchController$1;
.super Ljava/lang/Object;
.source "KeyguardClockSwitchController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardClockSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitchController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->access$000(Lcom/android/keyguard/KeyguardClockSwitchController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateBigClockVisibility(I)V

    return-void
.end method
