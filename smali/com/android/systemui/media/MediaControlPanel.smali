.class public Lcom/android/systemui/media/MediaControlPanel;
.super Ljava/lang/Object;
.source "MediaControlPanel.java"


# static fields
.field static final ACTION_IDS:[I

.field private static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlbumArtSize:I

.field private mBackgroundColor:I

.field protected final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/media/session/MediaController;

.field private mDevicePadding:I

.field protected mInstanceId:I

.field private mKey:Ljava/lang/String;

.field private mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

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

.field private mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

.field private mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

.field private mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

.field private final mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public static synthetic $r8$lambda$C8N8OeDspQV22WBBu6K8sAucg5Y(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachRecommendation$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FVguFd7FuE8l-v_m1BCpXam7-1Y(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachPlayer$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GNW_tC_rFuKXwtofw5Sk93VhEbw(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$9(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jjr5O1wtMO6CF5t9F2ZZcGZaod0(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachRecommendation$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NBAeT2ePIYDK-Rh30u2D0oBtPdE(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachPlayer$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFANYmY6aKk9trKvNzJBoTdr4Vk(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$11(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_n7RHDV3IefH_2-xMsXeP-0uXw4(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindRecommendation$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a5slXbPJoaLlhn5r7W9ZD4znBjU(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$6(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-0JjBmSW6Zfc0ZGA0z6Azs57IQ(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachRecommendation$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8qH6u6n2PGCzo542oG2IW5FT6U(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaControlPanel;->lambda$setSmartspaceRecItemOnClickListener$14(Landroid/app/smartspace/SmartspaceAction;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j3J0mC7FVkuT_DqkFGek0kYlBLs(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$7(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sVsSp5nrRnmX9rcMvrXfY4RJK8s(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$8(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$utQPM_ytxrZxy8JqFILxkobSav4(Lcom/android/systemui/media/MediaControlPanel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindRecommendation$12()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vAGrBSPnb5VpzckPNxgsDbfWwzE(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachPlayer$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wAs7dZJ76TgAyL9wkFBBuskJtbg(Lcom/android/systemui/media/MediaControlPanel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$10()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 84
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

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 1
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
            "Lcom/android/systemui/media/MediaCarouselController;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    .line 126
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 128
    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 129
    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    .line 130
    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    .line 131
    iput-object p6, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    .line 132
    iput-object p7, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 133
    iput-object p8, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 134
    iput-object p9, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->loadDimens()V

    return-void
.end method

.method private buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 1

    .line 461
    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/systemui/media/MediaControlPanel$1;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;Lcom/android/systemui/util/animation/TransitionLayout;)V

    return-object v0
.end method

.method private closeGuts()V
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    return-void
.end method

.method private getGrayscaleFilter()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    .line 663
    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 665
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v0
.end method

.method private synthetic lambda$attachPlayer$0(Landroid/view/View;)Z
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->openGuts()V

    return v0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return v0
.end method

.method private synthetic lambda$attachPlayer$1(Landroid/view/View;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return-void
.end method

.method private synthetic lambda$attachPlayer$2(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$attachRecommendation$3(Landroid/view/View;)Z
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->openGuts()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$attachRecommendation$4(Landroid/view/View;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return-void
.end method

.method private synthetic lambda$attachRecommendation$5(Landroid/view/View;)V
    .locals 1

    .line 248
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$bindPlayer$10()Z
    .locals 5

    .line 441
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

.method private synthetic lambda$bindPlayer$11(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 1

    const/16 p2, 0x2f9

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    .line 438
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    .line 440
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance p2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    goto :goto_0

    .line 446
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dismiss media with null notification. Token uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaControlPanel"

    .line 446
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$bindPlayer$6(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 1

    .line 279
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x2f8

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    .line 283
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    .line 284
    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p0

    .line 283
    invoke-interface {p2, p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private synthetic lambda$bindPlayer$7(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$bindPlayer$8(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    const/16 p2, 0x2f8

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    .line 403
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$bindPlayer$9(Landroid/media/session/MediaController;)V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private synthetic lambda$bindRecommendation$12()Z
    .locals 4

    .line 577
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaDataManager;

    sget-wide v0, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(J)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$bindRecommendation$13(Landroid/view/View;)V
    .locals 2

    const/16 p1, 0x2f9

    const/4 v0, 0x1

    .line 573
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    .line 576
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v1, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method private synthetic lambda$setSmartspaceRecItemOnClickListener$14(Landroid/app/smartspace/SmartspaceAction;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const/16 p3, 0x2f8

    const/4 v0, 0x1

    .line 683
    invoke-direct {p0, p3, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    .line 686
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->shouldSmartspaceRecItemOpenInForeground(Landroid/app/smartspace/SmartspaceAction;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 688
    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 689
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    .line 692
    invoke-virtual {v1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v1

    .line 691
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaControlPanel;->buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v1

    .line 688
    invoke-interface {p2, p1, p3, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 699
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaCarouselController;->setShouldScrollToActivePlayer(Z)V

    return-void
.end method

.method private loadDimens()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_album_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_album_device_padding:I

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mDevicePadding:I

    return-void
.end method

.method private logSmartspaceCardReported(IZ)V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result p0

    .line 742
    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported(IIZI)V

    return-void
.end method

.method private scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 609
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

    .line 612
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 614
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 616
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-gt v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-le v0, v2, :cond_3

    .line 617
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 618
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

    .line 619
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 621
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method private setSmartspaceRecItemOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceAction;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 676
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/smartspace/SmartspaceAction;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "MediaControlPanel"

    const-string p1, "No tap action can be set up"

    .line 677
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 669
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz p3, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 670
    :goto_1
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method

.method private shouldSmartspaceRecItemOpenInForeground(Landroid/app/smartspace/SmartspaceAction;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 705
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 706
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.google.android.apps.gsa.smartspace.extra.SMARTSPACE_INTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 v0, 0x1

    .line 716
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_OPEN_IN_FOREGROUND"

    .line 717
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create intent from URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaControlPanel"

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public attachPlayer(Lcom/android/systemui/media/PlayerViewHolder;)V
    .locals 3

    .line 204
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/android/systemui/media/SeekBarObserver;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/SeekBarObserver;-><init>(Lcom/android/systemui/media/PlayerViewHolder;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    .line 208
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v1}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/SeekBarViewModel;->attachTouchHandlers(Landroid/widget/SeekBar;)V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    sget-object v1, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getCancel()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSettings()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public attachRecommendation(Lcom/android/systemui/media/RecommendationViewHolder;)V
    .locals 2

    .line 231
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    .line 232
    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    sget-object v1, Lcom/android/systemui/media/MediaViewController$TYPE;->RECOMMENDATION:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V

    .line 236
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getCancel()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getSettings()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 254
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p2

    .line 257
    iput-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getBackgroundColor()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    .line 262
    iget-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 263
    :cond_1
    iput-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    .line 266
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 267
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v4, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, v4, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    .line 269
    :cond_3
    iput-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 272
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    .line 273
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v6, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v6}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_4
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v0

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    move v6, v8

    :goto_1
    if-eqz v6, :cond_6

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/systemui/media/MediaControlPanel;->scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 292
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 293
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 296
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    .line 299
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v9, Lcom/android/systemui/R$drawable;->ic_headphone:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 301
    :goto_2
    iget v9, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 302
    iget v9, v1, Lcom/android/systemui/media/MediaControlPanel;->mDevicePadding:I

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 303
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_3
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v6

    .line 308
    invoke-virtual {v6}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const-string v9, "MediaControlPanel"

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v0

    if-nez v0, :cond_8

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 311
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v10, 0x1120027

    invoke-static {v0, v10}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 313
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_4

    .line 315
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getGrayscaleFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 317
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 317
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 319
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot find icon for package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    sget v0, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :goto_4
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getArtistText()Landroid/widget/TextView;

    move-result-object v0

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 337
    sget v0, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-direct {v1, v5, v0, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 338
    invoke-direct {v1, v4, v0, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 339
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v6, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda8;

    invoke-direct {v6, v1, v2}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessIcon()Landroid/widget/ImageView;

    move-result-object v0

    .line 344
    iget-object v6, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v6}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v6

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v10

    .line 347
    iget-object v11, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getId()I

    move-result v11

    .line 348
    iget-object v12, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v12}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ImageView;->getId()I

    move-result v12

    if-eqz v10, :cond_9

    .line 349
    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v13

    if-nez v13, :cond_9

    move v13, v7

    goto :goto_5

    :cond_9
    move v13, v8

    :goto_5
    if-eqz v13, :cond_a

    move v15, v8

    goto :goto_6

    :cond_a
    const/16 v15, 0x8

    .line 351
    :goto_6
    iget-object v14, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v14}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessFallback()Landroid/widget/ImageView;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    invoke-virtual {v4, v12, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 353
    invoke-virtual {v5, v12, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz v13, :cond_b

    const/16 v12, 0x8

    goto :goto_7

    :cond_b
    move v12, v8

    .line 355
    :goto_7
    iget-object v14, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v14}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 356
    invoke-virtual {v4, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 357
    invoke-virtual {v5, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v12

    const v14, 0x3ec28f5c    # 0.38f

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v12, :cond_c

    move v12, v14

    goto :goto_8

    :cond_c
    move v12, v15

    .line 359
    :goto_8
    invoke-virtual {v4, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 360
    invoke-virtual {v5, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 362
    iget-object v11, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v12

    xor-int/2addr v12, v7

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v13, :cond_d

    .line 364
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_d
    if-eqz v10, :cond_f

    .line 367
    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 368
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    instance-of v9, v3, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v9, :cond_e

    .line 370
    check-cast v3, Lcom/android/settingslib/widget/AdaptiveIcon;

    .line 371
    iget v9, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-virtual {v3, v9}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    .line 372
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 374
    :cond_e
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    :goto_9
    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_f
    const-string v3, "device is null. Not binding output chip."

    .line 379
    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    .line 380
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x104032b

    .line 381
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 384
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActionsToShowInCompact()Ljava/util/List;

    move-result-object v0

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v3

    move v6, v8

    .line 388
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_11

    sget-object v9, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v10, v9

    if-ge v6, v10, :cond_11

    .line 389
    aget v9, v9, v6

    .line 390
    iget-object v10, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v10, v9}, Lcom/android/systemui/media/PlayerViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v10

    .line 391
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/media/MediaAction;

    .line 392
    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 393
    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v11

    if-nez v11, :cond_10

    .line 397
    invoke-virtual {v10, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_c

    .line 399
    :cond_10
    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 400
    new-instance v12, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;

    invoke-direct {v12, v1, v11}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :goto_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 407
    invoke-direct {v1, v5, v9, v10}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 408
    invoke-direct {v1, v4, v9, v7}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 412
    :cond_11
    :goto_d
    sget-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v7, v0

    if-ge v6, v7, :cond_12

    .line 413
    aget v7, v0, v6

    invoke-direct {v1, v5, v7, v8}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 414
    aget v0, v0, v6

    invoke-direct {v1, v4, v0, v8}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 417
    :cond_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_13

    .line 418
    aget v0, v0, v8

    const/4 v3, 0x4

    invoke-virtual {v4, v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 422
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 423
    iget-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->isClearable()Z

    move-result v0

    .line 427
    iget-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_14

    .line 428
    sget v4, Lcom/android/systemui/R$string;->controls_media_close_session:I

    goto :goto_e

    .line 429
    :cond_14
    sget v4, Lcom/android/systemui/R$string;->controls_media_active_session:I

    .line 427
    :goto_e
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 432
    iget-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getDismissLabel()Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_15

    move v14, v15

    :cond_15
    invoke-virtual {v3, v14}, Landroid/view/View;->setAlpha(F)V

    .line 433
    iget-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 434
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void
.end method

.method public bindRecommendation(Landroid/app/smartspace/SmartspaceTarget;I)V
    .locals 17

    move-object/from16 v1, p0

    .line 491
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    .line 496
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    .line 497
    invoke-static/range {p2 .. p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    move/from16 v0, p2

    .line 498
    iput v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceTarget;->getIconGrid()Ljava/util/List;

    move-result-object v2

    const-string v3, "MediaControlPanel"

    if-eqz v2, :cond_6

    .line 501
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 506
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaCoverItems()Ljava/util/List;

    move-result-object v4

    .line 507
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaLogoItems()Ljava/util/List;

    move-result-object v5

    .line 508
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaCoverItemsResIds()Ljava/util/List;

    move-result-object v6

    .line 509
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaLogoItemsResIds()Ljava/util/List;

    move-result-object v7

    .line 510
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v8

    .line 511
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v9

    .line 512
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x6

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v12, v10, :cond_5

    if-ge v13, v10, :cond_5

    .line 517
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/smartspace/SmartspaceAction;

    .line 518
    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "No media cover is provided. Skipping this item..."

    .line 519
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_4

    .line 524
    :cond_2
    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v14, "package_name"

    .line 526
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 528
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    :try_start_0
    iget-object v14, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getGrayscaleFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v14, 0x0

    :goto_1
    const-string v11, "No media source icon can be fetched via package name"

    .line 534
    invoke-static {v3, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    :goto_2
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 543
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 547
    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 550
    invoke-direct {v1, v0, v15}, Lcom/android/systemui/media/MediaControlPanel;->setSmartspaceRecItemOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceAction;)V

    const/4 v0, 0x3

    const/4 v11, 0x1

    if-ge v13, v0, :cond_3

    .line 554
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 553
    invoke-direct {v1, v9, v0, v11}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 556
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 555
    invoke-direct {v1, v9, v0, v11}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    const/4 v14, 0x0

    goto :goto_3

    .line 559
    :cond_3
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v14, 0x0

    .line 558
    invoke-direct {v1, v9, v0, v14}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 561
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 560
    invoke-direct {v1, v9, v0, v14}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 564
    :goto_3
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 563
    invoke-direct {v1, v8, v0, v11}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    .line 566
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 565
    invoke-direct {v1, v8, v0, v11}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    const-string v0, "No media source icon is provided. Skipping this item..."

    .line 537
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 572
    :cond_5
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/RecommendationViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    .line 583
    iput-object v2, v1, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    .line 584
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void

    :cond_6
    :goto_5
    const-string v0, "Empty media recommendations"

    .line 502
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public closeGuts(Z)V
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaViewController;->closeGuts(Z)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public getMediaViewController()Lcom/android/systemui/media/MediaViewController;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    return-object p0
.end method

.method public getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    return-object p0
.end method

.method public getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    return-object p0
.end method

.method protected getSurfaceForSmartspaceLogging()I
    .locals 1

    .line 731
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->getCurrentEndLocation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public onDestroy()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->onDestroy()V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->onDestroy()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setListening(Z)V

    return-void
.end method
