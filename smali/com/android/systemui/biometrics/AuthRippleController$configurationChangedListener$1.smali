.class public final Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;
.super Ljava/lang/Object;
.source "AuthRippleController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleController;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/biometrics/AuthRippleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$updateSensorLocation(Lcom/android/systemui/biometrics/AuthRippleController;)V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$updateRippleColor(Lcom/android/systemui/biometrics/AuthRippleController;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$updateRippleColor(Lcom/android/systemui/biometrics/AuthRippleController;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$updateRippleColor(Lcom/android/systemui/biometrics/AuthRippleController;)V

    return-void
.end method
