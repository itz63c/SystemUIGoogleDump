.class public Lcom/android/systemui/qs/QSContainerImplController;
.super Lcom/android/systemui/util/ViewController;
.source "QSContainerImplController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/QSContainerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;


# direct methods
.method public static synthetic $r8$lambda$oTn4Cka8j8VuOU13jd8ViV_6_2w(Lcom/android/systemui/qs/QSContainerImplController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSContainerImplController;->lambda$onViewAttached$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 34
    new-instance p1, Lcom/android/systemui/qs/QSContainerImplController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSContainerImplController$1;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    .line 49
    iput-object p4, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSContainerImplController;)Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSContainerImplController;)Lcom/android/systemui/qs/QuickStatusBarHeaderController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSContainerImplController;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$onViewAttached$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelController;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->onMediaVisibilityChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Lcom/android/systemui/qs/QSContainerImpl;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    return-object p0
.end method

.method public onInit()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    new-instance v1, Lcom/android/systemui/qs/QSContainerImplController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainerImplController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSContainerImplController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelController;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setListening(Z)V

    return-void
.end method
