.class Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$4;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->initialize3(Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/RemoteTransitions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)V
    .locals 0

    .line 3021
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$4;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;
    .locals 2

    .line 3024
    new-instance v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorFactory;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$4;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$ViewInstanceCreatorFactory;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 3021
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$4;->get()Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;

    move-result-object p0

    return-object p0
.end method
