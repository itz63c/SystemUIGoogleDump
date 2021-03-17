.class public Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;
.super Ljava/lang/Object;
.source "ColorChangeHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsDark:Z

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendColor()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mIsDark:Z

    const-string v2, "is_dark"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ColorChangeHandler"

    const-string v0, "SysUI assist UI color changed PendingIntent canceled"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method onColorChange(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mIsDark:Z

    .line 35
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->sendColor()V

    return-void
.end method

.method public onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 0

    .line 40
    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onColorChanged:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mPendingIntent:Landroid/app/PendingIntent;

    .line 41
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->sendColor()V

    return-void
.end method
