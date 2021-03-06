.class public abstract Lcom/android/systemui/tuner/TunerService;
.super Ljava/lang/Object;
.source "TunerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerService$ClearReceiver;,
        Lcom/android/systemui/tuner/TunerService$Tunable;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final isTunerEnabled(Landroid/content/Context;Landroid/os/UserHandle;)Z
    .locals 2

    .line 85
    invoke-static {p0, p1}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static parseIntegerSwitch(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 132
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    nop

    :catch_0
    :cond_1
    :goto_0
    return p1
.end method

.method public static final setTunerEnabled(Landroid/content/Context;Landroid/os/UserHandle;Z)V
    .locals 2

    .line 72
    invoke-static {p0, p1}, Lcom/android/systemui/tuner/TunerService;->userContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p1, v0, p2, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static final showResetRequest(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/Runnable;)V
    .locals 4

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 108
    sget v1, Lcom/android/systemui/R$string;->remove_from_settings_prompt:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 109
    sget v1, Lcom/android/systemui/R$string;->cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    sget v1, Lcom/android/systemui/R$string;->guest_exit_guest_dialog_remove:I

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/tuner/TunerService$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/tuner/TunerService$1;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    const/4 p0, -0x1

    .line 111
    invoke-virtual {v0, p0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static userContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public varargs abstract addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract getValue(Ljava/lang/String;I)I
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public isTunerEnabled(Landroid/os/UserHandle;)Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public abstract removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
.end method

.method public setTunerEnabled(Landroid/os/UserHandle;Z)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public abstract setValue(Ljava/lang/String;I)V
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public showResetRequest(Landroid/os/UserHandle;Ljava/lang/Runnable;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    return-void
.end method
