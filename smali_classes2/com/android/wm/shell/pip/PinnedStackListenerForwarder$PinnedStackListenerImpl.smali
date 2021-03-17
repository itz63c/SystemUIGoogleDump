.class Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PinnedStackListenerForwarder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;


# direct methods
.method public static synthetic $r8$lambda$4sU9ZMYPzfD5dhgIGI_W2KE9iI4(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->lambda$onActivityHidden$3(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$84YBhhUH6xVW3YVfBFvs652VKy0(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->lambda$onAspectRatioChanged$4(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$9cQn7H-lSWu-3VxXa4CWQxDsCI8(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->lambda$onImeVisibilityChanged$1(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$nkw3SNgSZ16CofVsSxND7H3sdZ0(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->lambda$onActionsChanged$2(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tyE4yQFc-oIltzUFjc_xYmQ2uV0(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->lambda$onMovementBoundsChanged$0(Z)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)V

    return-void
.end method

.method private synthetic lambda$onActionsChanged$2(Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$400(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method private synthetic lambda$onActivityHidden$3(Landroid/content/ComponentName;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$300(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onAspectRatioChanged$4(F)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$200(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;F)V

    return-void
.end method

.method private synthetic lambda$onImeVisibilityChanged$1(ZI)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$500(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;ZI)V

    return-void
.end method

.method private synthetic lambda$onMovementBoundsChanged$0(Z)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$600(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;Z)V

    return-void
.end method


# virtual methods
.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$100(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/pm/ParceledListSlice;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityHidden(Landroid/content/ComponentName;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$100(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAspectRatioChanged(F)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$100(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;F)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$100(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;ZI)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMovementBoundsChanged(Z)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->this$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;->access$100(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
