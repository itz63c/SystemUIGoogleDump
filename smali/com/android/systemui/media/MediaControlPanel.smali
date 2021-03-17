.class public Lcom/android/systemui/media/MediaControlPanel;
.super Ljava/lang/Object;
.source "MediaControlPanel.java"


# static fields
.field static final ACTION_IDS:[I

.field private static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlbumArtRadius:I

.field private mAlbumArtSize:I

.field private mBackgroundColor:I

.field protected final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/media/session/MediaController;

.field private mKey:Ljava/lang/String;

.field private mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private mMediaDataManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

.field private mMediaViewController:Lcom/android/systemui/media/MediaViewController;

.field private mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

.field private final mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

.field private final mShowAppName:Z

.field private final mShowDeviceName:Z

.field private mToken:Landroid/media/session/MediaSession$Token;

.field private mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

.field private final mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public static synthetic $r8$lambda$6qQJ5CS6UET2HLWStZI8iBd_zv4(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$5(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CZM8WE6CDzNk_a8OkLX5BOfbrEM(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$4(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CeILLoEn3SSy0_lXvGi6MXuUBbk(Lcom/android/systemui/media/MediaControlPanel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$7()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L6Rgbglv_VHzvfsVjF0zlsl9T-s(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$8(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nq4Rz_Qoc7Lmqh6Ac-qHA2HylKw(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attach$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ud_-UDGQ-zFsg847FOgL2nofij8(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attach$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gHL5SfWWI3BjIBsSa7HpoUyGY5E(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attach$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rybhLKhbbVc0Fy_NivtMz2j0gME(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$6(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u0rsKDmRHD3jXpiN3gNYIq4PrBc(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$3(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 76
    sget v1, Lcom/android/systemui/R$id;->action0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/media/MediaViewController;",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "persist.sysui.qs_media_show_app_name"

    const/4 v1, 0x0

    .line 68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowAppName:Z

    const-string v0, "persist.sysui.qs_media_show_device_name"

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowDeviceName:Z

    .line 115
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 117
    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 118
    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    .line 119
    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    .line 120
    iput-object p6, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    .line 121
    iput-object p7, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 122
    iput-object p8, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->loadDimens()V

    .line 125
    new-instance p1, Lcom/android/systemui/media/MediaControlPanel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaControlPanel$1;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/MediaControlPanel;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/MediaControlPanel;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtRadius:I

    return p0
.end method

.method private closeGuts()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    return-void
.end method

.method private synthetic lambda$attach$0(Landroid/view/View;)Z
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->openGuts()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$attach$1(Landroid/view/View;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return-void
.end method

.method private synthetic lambda$attach$2(Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$bind$3(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    .line 245
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private synthetic lambda$bind$4(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic lambda$bind$5(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 352
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$bind$6(Landroid/media/session/MediaController;)V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private synthetic lambda$bind$7()Z
    .locals 5

    .line 383
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    sget-wide v1, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/media/MediaDataManager;->dismissMediaData(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$bind$8(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    .line 380
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    .line 382
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance p2, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    goto :goto_0

    .line 388
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dismiss media with null notification. Token uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaControlPanel"

    .line 388
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private loadDimens()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 143
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtRadius:I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_album_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    return-void
.end method

.method private scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 422
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 424
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 426
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-gt v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-le v0, v2, :cond_3

    .line 427
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 428
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v3, p0

    int-to-float p0, v3

    div-float/2addr p0, v2

    neg-float v0, v0

    float-to-int v0, v0

    neg-float p0, p0

    float-to-int p0, p0

    .line 429
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 431
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method private setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 470
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz p3, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 471
    :goto_1
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/media/PlayerViewHolder;)V
    .locals 3

    .line 187
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    .line 188
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v2, 0x1

    .line 192
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 194
    new-instance v1, Lcom/android/systemui/media/SeekBarObserver;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/SeekBarObserver;-><init>(Lcom/android/systemui/media/PlayerViewHolder;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v1}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/SeekBarViewModel;->attachTouchHandlers(Landroid/widget/SeekBar;)V

    .line 197
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 207
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getCancel()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSettings()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bind(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V
    .locals 13

    .line 219
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p2

    .line 224
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    .line 225
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    :cond_1
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 229
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 230
    new-instance p2, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {p2, v1, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    .line 232
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 235
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p2

    .line 236
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    .line 239
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 238
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 242
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 244
    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v2

    .line 251
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v5

    :goto_1
    if-eqz v3, :cond_6

    .line 253
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/media/MediaControlPanel;->scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 254
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    :cond_6
    sget v2, Lcom/android/systemui/R$id;->album_art:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 257
    invoke-direct {p0, p2, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v2

    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_2

    .line 264
    :cond_7
    sget v3, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getTitleText()Landroid/widget/TextView;

    move-result-object v2

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getAppName()Landroid/widget/TextView;

    move-result-object v2

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowAppName:Z

    const/16 v6, 0x8

    if-eqz v3, :cond_8

    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    sget v2, Lcom/android/systemui/R$id;->app_name:I

    iget-boolean v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowAppName:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 276
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowAppName:Z

    invoke-direct {p0, p2, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 279
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getArtistText()Landroid/widget/TextView;

    move-result-object v2

    .line 280
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 284
    sget v2, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-direct {p0, v1, v2, v4}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 285
    invoke-direct {p0, p2, v2, v4}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v2

    .line 290
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowDeviceName:Z

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_4

    :cond_9
    move v3, v6

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    sget v2, Lcom/android/systemui/R$id;->media_seamless_text:I

    iget-boolean v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowDeviceName:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 292
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mShowDeviceName:Z

    invoke-direct {p0, p2, v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 294
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessIcon()Landroid/widget/ImageView;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v3

    .line 297
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v7

    .line 298
    iget-object v8, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v8}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    .line 299
    iget-object v9, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v9}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getId()I

    move-result v9

    if-eqz v7, :cond_a

    .line 300
    invoke-virtual {v7}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v10

    if-nez v10, :cond_a

    move v10, v4

    goto :goto_5

    :cond_a
    move v10, v5

    :goto_5
    if-eqz v10, :cond_b

    move v11, v5

    goto :goto_6

    :cond_b
    move v11, v6

    .line 302
    :goto_6
    iget-object v12, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v12}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    invoke-virtual {p2, v9, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 304
    invoke-virtual {v1, v9, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz v10, :cond_c

    move v9, v6

    goto :goto_7

    :cond_c
    move v9, v5

    .line 306
    :goto_7
    iget-object v11, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    invoke-virtual {p2, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 308
    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 309
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v9

    const v11, 0x3ec28f5c    # 0.38f

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v9, :cond_d

    move v9, v11

    goto :goto_8

    :cond_d
    move v9, v12

    .line 310
    :goto_8
    invoke-virtual {p2, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 311
    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 313
    iget-object v8, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v8}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v9

    xor-int/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v10, :cond_e

    .line 315
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_e
    if-eqz v7, :cond_10

    .line 318
    invoke-virtual {v7}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 319
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    instance-of v6, v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v6, :cond_f

    .line 321
    check-cast v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 322
    iget v6, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    .line 323
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 325
    :cond_f
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :goto_9
    invoke-virtual {v7}, Lcom/android/systemui/media/MediaDeviceData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_10
    const-string v0, "MediaControlPanel"

    const-string v7, "device is null. Not binding output chip."

    .line 330
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x104031b

    .line 332
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 335
    :goto_a
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getActionsToShowInCompact()Ljava/util/List;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v2

    move v3, v5

    .line 339
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_12

    sget-object v6, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v7, v6

    if-ge v3, v7, :cond_12

    .line 340
    aget v6, v6, v3

    .line 341
    iget-object v7, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v7, v6}, Lcom/android/systemui/media/PlayerViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v7

    .line 342
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/MediaAction;

    .line 343
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 344
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v8}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v8

    if-nez v8, :cond_11

    .line 348
    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_c

    .line 350
    :cond_11
    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 351
    new-instance v9, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda5;

    invoke-direct {v9, v8}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 356
    invoke-direct {p0, v1, v6, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 357
    invoke-direct {p0, p2, v6, v4}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 361
    :cond_12
    :goto_d
    sget-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v2, v0

    if-ge v3, v2, :cond_13

    .line 362
    aget v2, v0, v3

    invoke-direct {p0, p2, v2, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 363
    aget v0, v0, v3

    invoke-direct {p0, v1, v0, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 367
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel;->getController()Landroid/media/session/MediaController;

    move-result-object p2

    .line 368
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 371
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->isClearable()Z

    move-result p2

    .line 372
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_14

    .line 373
    sget v1, Lcom/android/systemui/R$string;->controls_media_close_session:I

    goto :goto_e

    .line 374
    :cond_14
    sget v1, Lcom/android/systemui/R$string;->controls_media_active_session:I

    .line 372
    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismissLabel()Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_15

    move v11, v12

    :cond_15
    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 379
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p2}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaControlPanel-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void
.end method

.method public closeGuts(Z)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaViewController;->closeGuts(Z)V

    return-void
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public getMediaViewController()Lcom/android/systemui/media/MediaViewController;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    return-object p0
.end method

.method public getView()Lcom/android/systemui/media/PlayerViewHolder;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->onDestroy()V

    .line 138
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->onDestroy()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setListening(Z)V

    return-void
.end method
