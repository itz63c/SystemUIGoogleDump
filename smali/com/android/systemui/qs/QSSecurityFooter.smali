.class Lcom/android/systemui/qs/QSSecurityFooter;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;,
        Lcom/android/systemui/qs/QSSecurityFooter$H;,
        Lcom/android/systemui/qs/QSSecurityFooter$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextContent:Ljava/lang/CharSequence;

.field protected mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPrimaryFooterIcon:Landroid/widget/ImageView;

.field private mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRootView:Landroid/view/View;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;

.field private final mUpdatePrimaryIcon:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSSecurityFooter"

    const/4 v1, 0x3

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSSecurityFooter;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Landroid/os/Looper;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 84
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 568
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    .line 575
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Ljava/lang/Runnable;

    .line 584
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Lcom/android/systemui/R$id;->footer_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->footer_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 97
    sget v0, Lcom/android/systemui/R$id;->primary_footer_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    .line 98
    sget p1, Lcom/android/systemui/R$drawable;->ic_info_outline:I

    iput p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 99
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 100
    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 101
    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 102
    iput-object p6, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 103
    new-instance p1, Lcom/android/systemui/qs/QSSecurityFooter$H;

    invoke-direct {p1, p0, p7, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 104
    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleRefreshState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSSecurityFooter;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method private createDialog()V
    .locals 4

    .line 317
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    .line 318
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getNegativeButton()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialogView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 325
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private createOrganizationDialogView()Landroid/view/View;
    .locals 15

    .line 338
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v1

    .line 339
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 340
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isProfileOwnerOfOrganizationOwnedDevice()Z

    move-result v2

    .line 341
    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v3

    .line 342
    iget-object v4, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 343
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 344
    iget-object v5, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 345
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 346
    iget-object v6, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v6

    .line 347
    iget-object v7, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v7

    .line 348
    iget-object v8, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v8

    .line 349
    iget-object v9, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v9

    .line 350
    iget-object v10, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v10

    .line 353
    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v13, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v12, Lcom/android/systemui/R$layout;->quick_settings_footer_dialog:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 355
    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 358
    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementMessage(ZLjava/lang/CharSequence;ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x8

    if-nez v4, :cond_0

    .line 362
    sget v2, Lcom/android/systemui/R$id;->device_management_disclosures:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_0
    sget v12, Lcom/android/systemui/R$id;->device_management_disclosures:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 365
    sget v12, Lcom/android/systemui/R$id;->device_management_warning:I

    .line 366
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 367
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v12, -0x2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 376
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v6, v7}, Lcom/android/systemui/qs/QSSecurityFooter;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    .line 379
    sget v6, Lcom/android/systemui/R$id;->ca_certs_disclosures:I

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 381
    :cond_2
    sget v6, Lcom/android/systemui/R$id;->ca_certs_disclosures:I

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 382
    sget v6, Lcom/android/systemui/R$id;->ca_certs_warning:I

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 383
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    new-instance v7, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v7}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 389
    :goto_1
    invoke-virtual {p0, v1, v8}, Lcom/android/systemui/qs/QSSecurityFooter;->getNetworkLoggingMessage(ZZ)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_3

    .line 392
    sget v7, Lcom/android/systemui/R$id;->network_logging_disclosures:I

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 394
    :cond_3
    sget v7, Lcom/android/systemui/R$id;->network_logging_disclosures:I

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 395
    sget v7, Lcom/android/systemui/R$id;->network_logging_warning:I

    .line 396
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 397
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_2
    invoke-virtual {p0, v1, v3, v9, v10}, Lcom/android/systemui/qs/QSSecurityFooter;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_4

    .line 404
    sget v3, Lcom/android/systemui/R$id;->vpn_disclosures:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 406
    :cond_4
    sget v3, Lcom/android/systemui/R$id;->vpn_disclosures:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 407
    sget v3, Lcom/android/systemui/R$id;->vpn_warning:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 408
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    new-instance v5, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v5}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_3
    const/4 v3, 0x1

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v14

    :goto_4
    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_5

    :cond_6
    move v2, v14

    :goto_5
    if-eqz v6, :cond_7

    move v5, v3

    goto :goto_6

    :cond_7
    move v5, v14

    :goto_6
    if-eqz v1, :cond_8

    move v14, v3

    :cond_8
    move-object v0, p0

    move v1, v4

    move v3, v5

    move v4, v14

    move-object v5, v11

    .line 415
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSSecurityFooter;->configSubtitleVisibility(ZZZZLandroid/view/View;)V

    return-object v11
.end method

.method private createParentalControlsDialogView()Landroid/view/View;
    .locals 4

    .line 425
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->quick_settings_footer_dialog_parental_controls:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 427
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getIcon(Landroid/app/admin/DeviceAdminInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 432
    sget v3, Lcom/android/systemui/R$id;->parental_controls_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 433
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->parental_controls_title:I

    .line 437
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 438
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLabel(Landroid/app/admin/DeviceAdminInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getNegativeButton()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isParentalControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->monitoring_button_view_controls:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->monitoring_button_view_policies:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleClick()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    const/16 p0, 0x39

    .line 141
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 142
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method private handleRefreshState()V
    .locals 16

    move-object/from16 v12, p0

    .line 154
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v1

    .line 155
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserTracker;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 156
    iget-object v2, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 158
    :goto_0
    iget-object v2, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v2

    .line 159
    iget-object v5, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v5

    .line 160
    iget-object v6, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v6

    .line 161
    iget-object v7, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v7

    .line 162
    iget-object v8, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v13

    .line 163
    iget-object v8, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v14

    .line 164
    iget-object v8, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 165
    iget-object v9, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 166
    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 167
    iget-object v10, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 168
    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/SecurityController;->isProfileOwnerOfOrganizationOwnedDevice()Z

    move-result v10

    .line 169
    iget-object v11, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->isParentalControlsEnabled()Z

    move-result v15

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-nez v13, :cond_3

    if-nez v14, :cond_3

    if-nez v10, :cond_3

    if-nez v15, :cond_3

    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 171
    :cond_3
    :goto_1
    iput-boolean v3, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    move-object/from16 v0, p0

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, v13

    move-object v7, v14

    move v11, v15

    .line 176
    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/qs/QSSecurityFooter;->getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 181
    sget v0, Lcom/android/systemui/R$drawable;->ic_info_outline:I

    if-nez v13, :cond_4

    if-eqz v14, :cond_6

    .line 183
    :cond_4
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_branded_vpn:I

    goto :goto_2

    .line 186
    :cond_5
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_vpn_ic:I

    .line 189
    :cond_6
    :goto_2
    iget v1, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v1, v0, :cond_7

    .line 190
    iput v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 191
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    if-eqz v15, :cond_8

    .line 196
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 197
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 198
    iget-object v1, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getIcon(Landroid/app/admin/DeviceAdminInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 201
    iput-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    :cond_9
    :goto_3
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    iget-object v0, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, v12, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected configSubtitleVisibility(ZZZZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    add-int/lit8 p0, p2, 0x1

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    if-eqz p4, :cond_2

    add-int/lit8 p0, p0, 0x1

    :cond_2
    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    return-void

    :cond_3
    const/16 p0, 0x8

    if-eqz p2, :cond_4

    .line 461
    sget p1, Lcom/android/systemui/R$id;->ca_certs_subtitle:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 464
    sget p1, Lcom/android/systemui/R$id;->network_logging_subtitle:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p4, :cond_6

    .line 467
    sget p1, Lcom/android/systemui/R$id;->vpn_subtitle:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method createDialogView()Landroid/view/View;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isParentalControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createParentalControlsDialogView()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createOrganizationDialogView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 506
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_management_ca_certificate:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 509
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_managed_profile_ca_certificate:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 512
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_ca_certificate:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p11, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_parental_controls:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p11, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_e

    if-eqz p4, :cond_2

    if-nez p9, :cond_1

    .line 252
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_managed_profile_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_managed_profile_monitoring:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p9, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p3, :cond_3

    .line 260
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p6, :cond_4

    if-eqz p7, :cond_4

    .line 263
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_vpns:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p7, :cond_5

    .line 266
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_managed_profile_named_vpn:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p7, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz p6, :cond_7

    if-eqz p2, :cond_6

    .line 271
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_personal_profile_named_vpn:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p6, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 275
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_vpn:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p6, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p10, :cond_b

    if-eqz p5, :cond_9

    if-nez p8, :cond_8

    .line 281
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 284
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management_monitoring:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p8, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    if-nez p9, :cond_a

    .line 289
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p9, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p2, :cond_d

    if-eqz p5, :cond_d

    if-nez p9, :cond_c

    .line 296
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_managed_profile_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 299
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_managed_profile_monitoring:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p9, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0

    :cond_e
    if-nez p3, :cond_18

    if-nez p4, :cond_18

    if-eqz p5, :cond_f

    goto :goto_3

    :cond_f
    if-eqz p6, :cond_11

    if-eqz p7, :cond_11

    if-nez p8, :cond_10

    .line 228
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management_vpns:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 230
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management_vpns:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p8, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    if-nez p6, :cond_14

    if-eqz p7, :cond_12

    goto :goto_0

    :cond_12
    if-nez p8, :cond_13

    .line 245
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 247
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p8, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_0
    if-nez p8, :cond_16

    .line 235
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management_named_vpn:I

    new-array p2, v0, [Ljava/lang/Object;

    if-eqz p6, :cond_15

    goto :goto_1

    :cond_15
    move-object p6, p7

    :goto_1
    aput-object p6, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 239
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management_named_vpn:I

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p8, p2, p11

    if-eqz p6, :cond_17

    goto :goto_2

    :cond_17
    move-object p6, p7

    :goto_2
    aput-object p6, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_3
    if-nez p8, :cond_19

    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 222
    :cond_19
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management_monitoring:I

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p8, p2, p11

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 493
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_named_management:I

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 496
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_named_management:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p4, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 499
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_management:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getNetworkLoggingMessage(ZZ)Ljava/lang/CharSequence;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 519
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_management_network_logging:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 521
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_managed_profile_network_logging:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 529
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 532
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_two_named_vpns:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p4, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 535
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_named_vpn:I

    new-array v1, v2, [Ljava/lang/Object;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p4

    :goto_0
    aput-object p3, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 540
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_two_named_vpns:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p4, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    .line 543
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_managed_profile_named_vpn:I

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p4, p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 547
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_personal_profile_named_vpn:I

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 550
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_named_vpn:I

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 554
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_vpn_settings_separator:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 555
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_vpn_settings:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public hasFooter()Z
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 309
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    iget-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 312
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->hasFooter()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public refreshState()V
    .locals 1

    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialog()V

    return-void
.end method
