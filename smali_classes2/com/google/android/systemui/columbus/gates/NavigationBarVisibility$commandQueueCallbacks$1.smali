.class public final Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;
.super Ljava/lang/Object;
.source "NavigationBarVisibility.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/systemui/assist/AssistManager;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Lcom/android/systemui/statusbar/CommandQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setWindowState(III)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->access$getDisplayId$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->access$setNavigationHidden$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;Z)V

    .line 37
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V

    :cond_1
    return-void
.end method
