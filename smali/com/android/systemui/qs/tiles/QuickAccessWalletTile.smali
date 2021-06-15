.class public Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "QuickAccessWalletTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCardRetriever:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

.field mCardViewDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;


# direct methods
.method public static synthetic $r8$lambda$EuQEGzcUPDUHonbXRkk2TfbRaew(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->lambda$handleClick$0(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/content/pm/PackageManager;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0

    .line 96
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->wallet_title:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mLabel:Ljava/lang/CharSequence;

    .line 68
    new-instance p1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;-><init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardRetriever:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

    .line 98
    iput-object p9, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 99
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 100
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 101
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 102
    iput-object p13, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mExecutor:Ljava/util/concurrent/Executor;

    .line 103
    iput-object p14, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;)Landroid/service/quickaccesswallet/WalletCard;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Landroid/service/quickaccesswallet/WalletCard;)Landroid/service/quickaccesswallet/WalletCard;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$handleClick$0(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/wallet/ui/WalletActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "QuickAccessWalletTile"

    const-string p1, "Could not get intent of the wallet app."

    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 147
    invoke-interface {p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    .line 146
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    :goto_0
    return-void
.end method

.method private queryWalletCards()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->wallet_tile_card_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->wallet_tile_card_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 208
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->wallet_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 209
    new-instance v3, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;-><init>(IIII)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardRetriever:Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$WalletCardRetriever;

    invoke-interface {v0, v1, v3, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected handleClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->fromView(Landroid/view/View;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p1

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->queryWalletCards()V

    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 2

    .line 155
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 156
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 157
    sget p2, Lcom/android/systemui/R$drawable;->ic_wallet_lockscreen:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 158
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 159
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSelectedCard:Landroid/service/quickaccesswallet/WalletCard;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 162
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->wallet_secondary_label_device_locked:I

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 166
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 167
    invoke-virtual {v1}, Landroid/service/quickaccesswallet/WalletCard;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 170
    :cond_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->wallet_secondary_label_no_card:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 173
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 175
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_1
    if-eqz p2, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    .line 177
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mCardViewDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isQuickAccessWalletEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc.hce"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "org.chromium.arc"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "nfc_payment_default_component"

    .line 190
    invoke-interface {p0, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 109
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    return-object p0
.end method
