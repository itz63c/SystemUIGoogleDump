.class final Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ControlAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate$Companion;

.field private static final MOVE_AFTER_ID:I

.field private static final MOVE_BEFORE_ID:I


# instance fields
.field private isFavorite:Z

.field private final moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

.field private final positionRetriever:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stateRetriever:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->Companion:Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate$Companion;

    .line 303
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_controls_move_before:I

    sput v0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->MOVE_BEFORE_ID:I

    .line 304
    sget v0, Lcom/android/systemui/R$id;->accessibility_action_controls_move_after:I

    sput v0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->MOVE_AFTER_ID:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;",
            ")V"
        }
    .end annotation

    const-string v0, "stateRetriever"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionRetriever"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->stateRetriever:Lkotlin/jvm/functions/Function1;

    .line 296
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->positionRetriever:Lkotlin/jvm/functions/Function0;

    .line 297
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    return-void
.end method

.method private final addClickAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 342
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->isFavorite:Z

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_control_change_unfavorite:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->accessibility_control_change_favorite:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 347
    :goto_0
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    return-void
.end method

.method private final maybeAddMoveAfterAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->positionRetriever:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;->canMoveAfter(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 368
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->positionRetriever:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    add-int/2addr p0, v0

    .line 369
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 370
    sget v3, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->MOVE_AFTER_ID:I

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/android/systemui/R$string;->accessibility_control_move:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 369
    invoke-direct {v2, v3, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 374
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContextClickable(Z)V

    :cond_1
    return-void
.end method

.method private final maybeAddMoveBeforeAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 355
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->positionRetriever:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;->canMoveBefore(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 356
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->positionRetriever:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    sub-int/2addr p0, v0

    .line 357
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 358
    sget v3, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->MOVE_BEFORE_ID:I

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/android/systemui/R$string;->accessibility_control_move:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-direct {v2, v3, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 361
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 362
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContextClickable(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContextClickable(Z)V

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->addClickAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->maybeAddMoveBeforeAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->maybeAddMoveAfterAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 316
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->stateRetriever:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->isFavorite:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 318
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 320
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    .line 328
    :cond_0
    sget p1, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->MOVE_BEFORE_ID:I

    if-ne p2, p1, :cond_2

    .line 329
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->positionRetriever:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;->moveBefore(I)V

    goto :goto_0

    .line 332
    :cond_2
    sget p1, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->MOVE_AFTER_ID:I

    if-ne p2, p1, :cond_4

    .line 333
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->positionRetriever:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;->moveAfter(I)V

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public final setFavorite(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlHolderAccessibilityDelegate;->isFavorite:Z

    return-void
.end method
