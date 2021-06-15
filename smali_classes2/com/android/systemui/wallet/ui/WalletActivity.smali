.class public Lcom/android/systemui/wallet/ui/WalletActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "WalletActivity.java"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field private mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;


# direct methods
.method public static synthetic $r8$lambda$0HoCIxs4-IdKOdOAJgssXRjEQs4(Lcom/android/systemui/wallet/ui/WalletActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IqTqjT5k3_k_N4uI8kc6xFMnPNY(Lcom/android/systemui/wallet/ui/WalletActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z_xDCjXH-RzWhlpsnyJCKLGigpQ()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/wallet/ui/WalletActivity;->lambda$onCreate$1()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 77
    iput-object p4, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 78
    iput-object p5, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    .line 79
    iput-object p6, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p7, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 81
    iput-object p8, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 82
    iput-object p9, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method private getHomeIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 181
    sget v0, Lcom/android/systemui/R$drawable;->ic_close:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 182
    sget v1, Lcom/android/internal/R$color;->system_neutral1_300:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 116
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    .line 120
    invoke-interface {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    move-result-object v1

    .line 119
    invoke-interface {p1, v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$onCreate$1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    sget-object p1, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 87
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 91
    sget v0, Lcom/android/systemui/R$layout;->quick_access_wallet:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 93
    sget v0, Lcom/android/systemui/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    :cond_0
    const-string v0, ""

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/wallet/ui/WalletActivity;->getHomeIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_close:I

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 101
    sget p1, Lcom/android/systemui/R$id;->wallet_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletView;

    .line 102
    new-instance v10, Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-object v3, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v4, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v5, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v8, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v9, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/wallet/ui/WalletScreenController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallet/ui/WalletView;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    iput-object v10, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 113
    invoke-virtual {p1}, Lcom/android/systemui/wallet/ui/WalletView;->getAppButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/android/systemui/wallet/ui/WalletView;->getActionButton()Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallet/ui/WalletActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$menu;->wallet_activity_options_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method protected onDestroy()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->onDismissed()V

    .line 177
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 166
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->wallet_lockscreen_settings:I

    if-ne v0, v2, :cond_1

    return v1

    .line 170
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onPause()V

    .line 151
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->requestUdfps(ZI)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    .line 145
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->requestUdfps(ZI)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStart()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
