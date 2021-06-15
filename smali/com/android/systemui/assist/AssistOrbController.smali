.class public Lcom/android/systemui/assist/AssistOrbController;
.super Ljava/lang/Object;
.source "AssistOrbController.java"


# instance fields
.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mContext:Landroid/content/Context;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private mView:Lcom/android/systemui/assist/AssistOrbContainer;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/assist/AssistOrbController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbController$1;-><init>(Lcom/android/systemui/assist/AssistOrbController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mHideRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/android/systemui/assist/AssistOrbController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbController$2;-><init>(Lcom/android/systemui/assist/AssistOrbController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 87
    iput-object p2, p0, Lcom/android/systemui/assist/AssistOrbController;->mContext:Landroid/content/Context;

    .line 88
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mWindowManager:Landroid/view/WindowManager;

    .line 89
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v1, -0x7ffffc7c

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 94
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/systemui/assist/AssistOrbContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistOrbController;)Landroid/view/WindowManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistOrbController;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/assist/AssistOrbController;)Lcom/android/settingslib/applications/InterestingConfigChanges;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/assist/AssistOrbController;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistOrbController;->showOrb(Z)V

    return-void
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 122
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->assist_orb_scrim_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v1, -0x1

    const/16 v3, 0x7f1

    const/16 v4, 0x118

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 130
    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const p0, 0x800053

    .line 131
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p0, "AssistPreviewPanel"

    .line 132
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p0, 0x31

    .line 133
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v6
.end method

.method private maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->getOrb()Lcom/android/systemui/assist/AssistOrbView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->getLogo()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "com.android.systemui.action_assist_icon"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/assist/AssistOrbController;->replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    return-void
.end method

.method private showOrb(Z)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->assist_orb:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistOrbContainer;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v2, 0x8

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbController;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 116
    iget-object v2, p0, Lcom/android/systemui/assist/AssistOrbController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public postHide()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postHideDelayed(J)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbController;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 152
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    if-eqz p4, :cond_0

    .line 155
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    if-eqz p4, :cond_1

    .line 160
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 163
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 162
    invoke-virtual {p0, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 174
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to swap drawable from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AssistOrbController"

    .line 174
    invoke-static {p3, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    const/4 p0, 0x0

    .line 178
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public showOrb(Landroid/content/ComponentName;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistOrbController;->showOrb(Z)V

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistOrbController;->maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V

    return-void
.end method
