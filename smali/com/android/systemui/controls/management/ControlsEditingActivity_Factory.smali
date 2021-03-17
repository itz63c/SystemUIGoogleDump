.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;
.super Ljava/lang/Object;
.source "ControlsEditingActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/management/ControlsEditingActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final customIconCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/CustomIconCache;",
            ">;"
        }
    .end annotation
.end field

.field private final globalActionsComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final uiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/CustomIconCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->controllerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->globalActionsComponentProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->customIconCacheProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/CustomIconCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/controls/CustomIconCache;Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/management/ControlsEditingActivity;
    .locals 7

    .line 60
    new-instance v6, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/controls/management/ControlsEditingActivity;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/controls/CustomIconCache;Lcom/android/systemui/controls/ui/ControlsUiController;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/management/ControlsEditingActivity;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->globalActionsComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->customIconCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/CustomIconCache;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->newInstance(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/controls/CustomIconCache;Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/management/ControlsEditingActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity_Factory;->get()Lcom/android/systemui/controls/management/ControlsEditingActivity;

    move-result-object p0

    return-object p0
.end method
