.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$2-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController$2;

.field public final synthetic f$1:Lcom/android/wm/shell/bubbles/Bubble;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$2;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$2-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$2;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$2-$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/bubbles/Bubble;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2-$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/BubbleController$2;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$2-$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/bubbles/Bubble;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleEntry;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$2;->$r8$lambda$xF2pVlF59D0bTCA_EO6oVVoXLWM(Lcom/android/wm/shell/bubbles/BubbleController$2;Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method
