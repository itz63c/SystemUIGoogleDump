.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/view/View;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda7;->f$2:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl-$$ExternalSyntheticLambda7;->f$2:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->$r8$lambda$a2dHfe-IhCKs0Sc7Mmr0cw8RdEY(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/view/View;Ljava/util/function/BiConsumer;)V

    return-void
.end method
