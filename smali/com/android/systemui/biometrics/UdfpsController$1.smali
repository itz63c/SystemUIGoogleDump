.class Lcom/android/systemui/biometrics/UdfpsController$1;
.super Ljava/lang/Object;
.source "UdfpsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsController;->access$000(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsController;->access$100(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "udfps_acquired_type"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v1}, Lcom/android/systemui/biometrics/UdfpsController;->access$000(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/os/Vibrator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/systemui/biometrics/UdfpsController;->access$300(Lcom/android/systemui/biometrics/UdfpsController;Ljava/lang/String;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/biometrics/UdfpsController;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method
