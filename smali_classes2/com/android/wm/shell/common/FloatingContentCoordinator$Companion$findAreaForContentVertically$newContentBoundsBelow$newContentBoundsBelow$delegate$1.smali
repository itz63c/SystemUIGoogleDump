.class final Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FloatingContentCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/Collection;Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $contentRect:Landroid/graphics/Rect;

.field final synthetic $newlyOverlappingRect:Landroid/graphics/Rect;

.field final synthetic $rectsToAvoidBelow:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;",
            "Landroid/graphics/Rect;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;>;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->this$0:Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;

    iput-object p2, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->$contentRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->$rectsToAvoidBelow:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->$newlyOverlappingRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Rect;
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->this$0:Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;

    .line 285
    iget-object v1, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->$contentRect:Landroid/graphics/Rect;

    .line 286
    iget-object v2, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->$rectsToAvoidBelow:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->$newlyOverlappingRect:Landroid/graphics/Rect;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion;->findAreaForContentAboveOrBelow(Landroid/graphics/Rect;Ljava/util/Collection;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator$Companion$findAreaForContentVertically$newContentBoundsBelow$newContentBoundsBelow$delegate$1;->invoke()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
