.class Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$6;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->initialize3(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V
    .locals 0

    .line 3118
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$6;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
    .locals 2

    .line 3121
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentBuilder;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$6;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$ExpandableNotificationRowComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 3118
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$6;->get()Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    move-result-object p0

    return-object p0
.end method
