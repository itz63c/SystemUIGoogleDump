.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;
.super Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.source "ControlsProviderLifecycleManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Subscribe"
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriber:Landroid/service/controls/IControlsSubscriber;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    .line 322
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->list:Ljava/util/List;

    .line 323
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->subscriber:Landroid/service/controls/IControlsSubscriber;

    return-void
.end method


# virtual methods
.method public callWrapper$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getTAG$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->list:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Lcom/android/systemui/controls/controller/ServiceWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->list:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->subscriber:Landroid/service/controls/IControlsSubscriber;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)Z

    move-result p0

    :goto_0
    return p0
.end method
