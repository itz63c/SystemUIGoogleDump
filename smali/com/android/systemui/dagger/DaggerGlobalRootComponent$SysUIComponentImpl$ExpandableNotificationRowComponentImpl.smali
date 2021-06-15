.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;
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

.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    .line 3907
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3909
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->initialize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 3878
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 25

    move-object/from16 v0, p0

    .line 3917
    invoke-static/range {p1 .. p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    .line 3918
    invoke-static/range {p4 .. p4}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->listContainerProvider:Ljavax/inject/Provider;

    .line 3919
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$8100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    .line 3920
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableViewControllerProvider:Ljavax/inject/Provider;

    .line 3921
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableOutlineViewControllerProvider:Ljavax/inject/Provider;

    .line 3922
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$3200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$8200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    .line 3923
    invoke-static/range {p2 .. p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->notificationEntryProvider:Ljavax/inject/Provider;

    .line 3924
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Ljavax/inject/Provider;

    .line 3925
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$500(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Ljavax/inject/Provider;

    .line 3926
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Ljavax/inject/Provider;

    .line 3927
    invoke-static/range {p3 .. p3}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    .line 3928
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->listContainerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10300(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10400(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10500(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10700(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10800(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10900(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v18

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v20

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10000(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v21

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$8200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v22

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v23

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$11300(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v24

    invoke-static/range {v2 .. v24}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getExpandableNotificationRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
    .locals 0

    .line 3933
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-object p0
.end method
