.class final Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1;
.super Ljava/lang/Object;
.source "Gate.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/Gate;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Gate.kt\ncom/google/android/systemui/columbus/gates/Gate$notifyListeners$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1819#2,2:94\n*E\n*S KotlinDebug\n*F\n+ 1 Gate.kt\ncom/google/android/systemui/columbus/gates/Gate$notifyListeners$1\n*L\n85#1,2:94\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/Gate;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1;->this$0:Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1;->this$0:Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->access$getListeners$p(Lcom/google/android/systemui/columbus/gates/Gate;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1;->this$0:Lcom/google/android/systemui/columbus/gates/Gate;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate$Listener;

    .line 85
    invoke-interface {v1, p0}, Lcom/google/android/systemui/columbus/gates/Gate$Listener;->onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V

    goto :goto_0

    :cond_0
    return-void
.end method
