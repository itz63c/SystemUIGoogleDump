.class final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSysUIGoogleGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarComponentImpl"
.end annotation


# instance fields
.field private authRippleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthRippleController;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private builderProvider2:Ljavax/inject/Provider;

.field private getAuthRippleViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthRippleView;",
            ">;"
        }
    .end annotation
.end field

.field private getLockIconViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/LockIconView;",
            ">;"
        }
    .end annotation
.end field

.field private getNotificationPanelViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;"
        }
    .end annotation
.end field

.field private lockIconViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/LockIconViewController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationPanelViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field private statusBarWindowViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V
    .locals 0

    .line 4952
    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4953
    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 4954
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->initialize(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$1;)V
    .locals 0

    .line 4928
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V
    .locals 54

    move-object/from16 v0, p0

    .line 4959
    invoke-static/range {p1 .. p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->statusBarWindowViewProvider:Ljavax/inject/Provider;

    .line 4960
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetNotificationPanelViewFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetNotificationPanelViewFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->getNotificationPanelViewProvider:Ljavax/inject/Provider;

    .line 4961
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$2200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->builderProvider:Ljavax/inject/Provider;

    .line 4962
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$2500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$2800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->builderProvider2:Ljavax/inject/Provider;

    .line 4963
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$12900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$11800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$11000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$2500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v18

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->builderProvider2:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13300(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v20

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v21

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v22

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v23

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v24

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$12600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v25

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v26

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v27

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v28

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v29

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$1100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v30

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v31

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v32

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v33

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v34

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14300(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v35

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v36

    invoke-static/range {v2 .. v36}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    .line 4964
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->statusBarWindowViewProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconViewFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetLockIconViewFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->getLockIconViewProvider:Ljavax/inject/Provider;

    .line 4965
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$3700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lcom/android/keyguard/LockIconViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/LockIconViewController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    .line 4966
    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->getNotificationPanelViewProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$2500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v18

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$11200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v20

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$2100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v21

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$3700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v22

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$6100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v23

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v24

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$11000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v25

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$15200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v26

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v27

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->builderProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15300(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v29

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v30

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v31

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v32

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v33

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v35

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v36

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v37

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v38

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v39

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v40

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v41

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v42

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v43

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$1600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v44

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v45

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16300(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v46

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$12500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v47

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$12600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v49

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v50

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$11800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v51

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v52

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$1900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v53

    invoke-static/range {v2 .. v53}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    .line 4967
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->statusBarWindowViewProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetAuthRippleViewFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetAuthRippleViewFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->getAuthRippleViewProvider:Ljavax/inject/Provider;

    .line 4968
    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->getAuthRippleViewProvider:Ljavax/inject/Provider;

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/biometrics/AuthRippleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/biometrics/AuthRippleController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->authRippleControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getAuthRippleController()Lcom/android/systemui/biometrics/AuthRippleController;
    .locals 0

    .line 4993
    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->authRippleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleController;

    return-object p0
.end method

.method public getLockIconViewController()Lcom/android/keyguard/LockIconViewController;
    .locals 0

    .line 4988
    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/LockIconViewController;

    return-object p0
.end method

.method public getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 4983
    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method public getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
    .locals 28

    move-object/from16 v0, p0

    .line 4973
    new-instance v26, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v3, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v3}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v4, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v4}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v5, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v5}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v6, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v6}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v7, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v8, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v8}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v9, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v9}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v9

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v10, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v10}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/tuner/TunerService;

    iget-object v11, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v11}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v11

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v12, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v12}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$13900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v12

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v13, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v13}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v13

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v14, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v14}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$8800(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v14

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v15, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v15}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v15

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/doze/DozeLog;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10700(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$15000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/dock/DockManager;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$16300(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$17000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    iget-object v1, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {v0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$14500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, v27

    invoke-direct/range {v1 .. v25}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;-><init>(Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    return-object v26
.end method

.method public getStatusBarWindowController()Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .locals 0

    .line 4978
    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$StatusBarComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {p0}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$17100(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method
