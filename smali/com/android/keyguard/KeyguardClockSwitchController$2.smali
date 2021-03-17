.class Lcom/android/keyguard/KeyguardClockSwitchController$2;
.super Ljava/lang/Object;
.source "KeyguardClockSwitchController.java"

# interfaces
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


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

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->access$200(Lcom/android/keyguard/KeyguardClockSwitchController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->access$100(Lcom/android/keyguard/KeyguardClockSwitchController;)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_0
    return-void
.end method
