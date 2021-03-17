.class public final synthetic Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl-$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/ParceledListSlice;

    invoke-static {v0, p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;->$r8$lambda$nkw3SNgSZ16CofVsSxND7H3sdZ0(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedStackListenerImpl;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method
