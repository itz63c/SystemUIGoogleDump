.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController-$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController-$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController-$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleController-$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController-$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController-$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController-$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->$r8$lambda$QMvioa0xVmPf0b6ufW64irwvqwk(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method
