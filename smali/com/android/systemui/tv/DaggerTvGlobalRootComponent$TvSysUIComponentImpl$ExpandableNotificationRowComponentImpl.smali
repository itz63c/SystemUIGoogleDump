.class final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpandableNotificationRowComponentImpl"
.end annotation


# instance fields
.field private activatableNotificationViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;",
            ">;"
        }
    .end annotation
.end field

.field private expandableNotificationRowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;",
            ">;"
        }
    .end annotation
.end field

.field private expandableNotificationRowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private expandableOutlineViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;",
            ">;"
        }
    .end annotation
.end field

.field private expandableViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;",
            ">;"
        }
    .end annotation
.end field

.field private factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationTapHelper$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private listContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEntryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private onExpandClickListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppNameProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationKeyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideStatusBarNotificationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    .line 3834
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3836
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->initialize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V
    .locals 0

    .line 3805
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 24

    move-object/from16 v0, p0

    .line 3844
    invoke-static/range {p1 .. p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    .line 3845
    invoke-static/range {p4 .. p4}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->listContainerProvider:Ljavax/inject/Provider;

    .line 3846
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$10800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$9100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 3847
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableViewControllerProvider:Ljavax/inject/Provider;

    .line 3848
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableOutlineViewControllerProvider:Ljavax/inject/Provider;

    .line 3849
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$4100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$10800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$9200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    .line 3850
    invoke-static/range {p2 .. p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->notificationEntryProvider:Ljavax/inject/Provider;

    .line 3851
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Ljavax/inject/Provider;

    .line 3852
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Ljavax/inject/Provider;

    .line 3853
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Ljavax/inject/Provider;

    .line 3854
    invoke-static/range {p3 .. p3}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    .line 3855
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->listContainerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$10900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$8000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$8100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$7100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v18

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$11900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v20

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$9200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v21

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$12000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v22

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->access$12100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v23

    invoke-static/range {v2 .. v23}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getExpandableNotificationRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
    .locals 0

    .line 3860
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-object p0
.end method
