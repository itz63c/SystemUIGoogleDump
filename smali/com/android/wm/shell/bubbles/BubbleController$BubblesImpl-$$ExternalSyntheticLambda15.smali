.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/function/Consumer;

.field public final synthetic f$3:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$2:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$3:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$2:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda15;->f$3:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->$r8$lambda$L5YcWKIaCt0vm9fMsJoZaxerAjA(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method
