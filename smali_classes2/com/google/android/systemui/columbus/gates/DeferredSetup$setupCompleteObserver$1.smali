.class final Lcom/google/android/systemui/columbus/gates/DeferredSetup$setupCompleteObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeferredSetup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/DeferredSetup;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/DeferredSetup;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/DeferredSetup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup$setupCompleteObserver$1;->this$0:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/gates/DeferredSetup$setupCompleteObserver$1;->invoke(Landroid/net/Uri;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup$setupCompleteObserver$1;->this$0:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->access$updateSetupComplete(Lcom/google/android/systemui/columbus/gates/DeferredSetup;)V

    .line 24
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/DeferredSetup$setupCompleteObserver$1;->this$0:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/DeferredSetup;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/DeferredSetup;)V

    return-void
.end method