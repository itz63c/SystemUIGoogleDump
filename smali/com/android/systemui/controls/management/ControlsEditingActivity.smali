.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "ControlsEditingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlsEditingActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsEditingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsEditingActivity.kt\ncom/android/systemui/controls/management/ControlsEditingActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/ControlsEditingActivity$Companion;

.field private static final EMPTY_TEXT_ID:I

.field private static final SUBTITLE_ID:I


# instance fields
.field private backToGlobalActions:Z

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private component:Landroid/content/ComponentName;

.field private final controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

.field private final currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

.field private final customIconCache:Lcom/android/systemui/controls/CustomIconCache;

.field private final favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

.field private final globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

.field private model:Lcom/android/systemui/controls/management/FavoritesModel;

.field private saveButton:Landroid/view/View;

.field private structure:Ljava/lang/CharSequence;

.field private subtitle:Landroid/widget/TextView;

.field private final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlsEditingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsEditingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->Companion:Lcom/android/systemui/controls/management/ControlsEditingActivity$Companion;

    .line 56
    sget v0, Lcom/android/systemui/R$string;->controls_favorite_rearrange:I

    sput v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->SUBTITLE_ID:I

    .line 57
    sget v0, Lcom/android/systemui/R$string;->controls_favorite_removed:I

    sput v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->EMPTY_TEXT_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/controls/CustomIconCache;Lcom/android/systemui/controls/ui/ControlsUiController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalActionsComponent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customIconCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    .line 49
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    .line 50
    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->backToGlobalActions:Z

    .line 67
    new-instance p1, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    .line 171
    new-instance p1, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    return-void
.end method

.method public static final synthetic access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->animateExitAndFinish()V

    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Lcom/android/systemui/controls/controller/ControlsControllerImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    return-object p0
.end method

.method public static final synthetic access$getEMPTY_TEXT_ID$cp()I
    .locals 1

    sget v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->EMPTY_TEXT_ID:I

    return v0
.end method

.method public static final synthetic access$getGlobalActionsComponent$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Lcom/android/systemui/globalactions/GlobalActionsComponent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    return-object p0
.end method

.method public static final synthetic access$getSUBTITLE_ID$cp()I
    .locals 1

    sget v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->SUBTITLE_ID:I

    return v0
.end method

.method public static final synthetic access$getSaveButton$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->saveButton:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getSubtitle$p(Lcom/android/systemui/controls/management/ControlsEditingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->subtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$saveFavorites(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->saveFavorites()V

    return-void
.end method

.method private final animateExitAndFinish()V
    .locals 2

    .line 121
    sget v0, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    const-string v1, "rootView"

    .line 123
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/android/systemui/controls/management/ControlsEditingActivity$animateExitAndFinish$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$animateExitAndFinish$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    .line 122
    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private final bindButtons()V
    .locals 3

    .line 155
    sget v0, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    sget v2, Lcom/android/systemui/R$string;->save:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 158
    new-instance v2, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;-><init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v1, "requireViewById<Button>(R.id.done).apply {\n            isEnabled = false\n            setText(R.string.save)\n            setOnClickListener {\n                saveFavorites()\n                animateExitAndFinish()\n                globalActionsComponent.handleShowGlobalActionsMenu()\n            }\n        }"

    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->saveButton:Landroid/view/View;

    return-void
.end method

.method private final bindViews()V
    .locals 6

    .line 133
    sget v0, Lcom/android/systemui/R$layout;->controls_management:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 137
    sget v2, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "requireViewById<ViewGroup>(R.id.controls_management_root)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "intent"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 143
    sget v0, Lcom/android/systemui/R$id;->stub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 144
    sget v1, Lcom/android/systemui/R$layout;->controls_management_editing:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 145
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 147
    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "structure"

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    sget v0, Lcom/android/systemui/R$id;->subtitle:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 150
    sget v2, Lcom/android/systemui/controls/management/ControlsEditingActivity;->SUBTITLE_ID:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "requireViewById<TextView>(R.id.subtitle).apply {\n            setText(SUBTITLE_ID)\n        }"

    .line 149
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->subtitle:Landroid/widget/TextView;

    return-void

    .line 148
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final saveFavorites()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 168
    new-instance v1, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getFavorites()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v2, v4, p0}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForStructure(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void

    :cond_0
    const-string p0, "model"

    .line 168
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p0, "structure"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "component"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final setUpList()V
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    const-string v2, "component"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getFavoritesForStructure(Landroid/content/ComponentName;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/android/systemui/controls/management/FavoritesModel;

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    if-eqz v5, :cond_3

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->favoritesModelCallback:Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;

    invoke-direct {v1, v4, v5, v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;-><init>(Lcom/android/systemui/controls/CustomIconCache;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;)V

    iput-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->control_card_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 189
    sget v1, Lcom/android/systemui/R$id;->list:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    .line 190
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 191
    new-instance v2, Lcom/android/systemui/controls/management/ControlAdapter;

    invoke-direct {v2, v0}, Lcom/android/systemui/controls/management/ControlAdapter;-><init>(F)V

    .line 192
    new-instance v0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$adapter$1$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$adapter$1$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    sget v4, Lcom/android/systemui/R$dimen;->controls_card_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 205
    new-instance v4, Lcom/android/systemui/controls/management/MarginItemDecorator;

    invoke-direct {v4, v0, v0}, Lcom/android/systemui/controls/management/MarginItemDecorator;-><init>(II)V

    .line 208
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$1$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$1$1;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/ControlAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 222
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 209
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 223
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    const-string v4, "model"

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/management/ControlAdapter;->changeModel(Lcom/android/systemui/controls/management/ControlsModel;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;->attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 227
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->model:Lcom/android/systemui/controls/management/FavoritesModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getItemTouchHelperCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p0, "structure"

    .line 186
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->backToGlobalActions:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->globalActionsComponent:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->handleShowGlobalActionsMenu()V

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/ControlsDialog;->show(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsDialog;

    .line 117
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->animateExitAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->component:Landroid/content/ComponentName;

    .line 81
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_structure"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->structure:Ljava/lang/CharSequence;

    .line 85
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "back_to_global_actions"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->backToGlobalActions:Z

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->bindViews()V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->bindButtons()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 232
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStart()V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->setUpList()V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStop()V

    .line 108
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsEditingActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
