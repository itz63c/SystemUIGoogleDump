.class final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSysUIGoogleGlobalRootComponent.java"

# interfaces
.implements Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardQsUserSwitchComponentImpl"
.end annotation


# instance fields
.field private arg0Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/UserAvatarView;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardQsUserSwitchControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/UserAvatarView;)V
    .locals 0

    .line 4444
    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4446
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->initialize(Lcom/android/systemui/statusbar/phone/UserAvatarView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$1;)V
    .locals 0

    .line 4439
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/android/systemui/statusbar/phone/UserAvatarView;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/statusbar/phone/UserAvatarView;)V
    .locals 10

    .line 4451
    invoke-static {p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->arg0Provider:Ljavax/inject/Provider;

    .line 4452
    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object p1, p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object p1, p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$2000(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object p1, p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$1600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$18400(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$18500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$9500(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$7200(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->access$10600(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object p1, p1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;->this$0:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;

    invoke-static {p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->access$900(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->keyguardQsUserSwitchControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;
    .locals 0

    .line 4457
    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$KeyguardQsUserSwitchComponentImpl;->keyguardQsUserSwitchControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    return-object p0
.end method
