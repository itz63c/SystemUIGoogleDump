.class public final Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;
.super Lcom/android/systemui/util/LifecycleActivity;
.source "ControlsProviderSelectorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$Companion;


# instance fields
.field private final backExecutor:Ljava/util/concurrent/Executor;

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field private final currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->Companion:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/ControlsUiController;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listingController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleActivity;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 51
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 52
    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 53
    iput-object p6, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 61
    new-instance p1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    return-void
.end method

.method public static final synthetic access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->animateExitAndFinish()V

    return-void
.end method

.method public static final synthetic access$getListingController$p(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)Lcom/android/systemui/controls/management/ControlsListingController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private final animateExitAndFinish()V
    .locals 2

    .line 172
    sget v0, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 173
    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    const-string v1, "rootView"

    .line 174
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 173
    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public final launchFavoritingActivity(Landroid/content/ComponentName;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$launchFavoritingActivity$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$launchFavoritingActivity$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/controls/ui/ControlsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 111
    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->animateExitAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 73
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget p1, Lcom/android/systemui/R$layout;->controls_management:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    .line 78
    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 79
    sget v1, Lcom/android/systemui/R$id;->controls_management_root:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById<ViewGroup>(R.id.controls_management_root)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 85
    sget p1, Lcom/android/systemui/R$id;->stub:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 86
    sget v0, Lcom/android/systemui/R$layout;->controls_management_apps:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 90
    sget p1, Lcom/android/systemui/R$id;->list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "requireViewById(R.id.list)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    sget p1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 94
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->controls_providers_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget p1, Lcom/android/systemui/R$id;->other_apps:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/high16 v0, 0x1040000

    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 100
    new-instance v0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$3$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$3$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget p1, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "recyclerView"

    .line 91
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onDestroy()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 168
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 13

    .line 116
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStart()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v2, "recyclerView"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/controls/management/AppAdapter;

    .line 121
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 122
    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 124
    iget-object v7, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 125
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const-string v2, "from(this)"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v9, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 127
    new-instance v10, Lcom/android/systemui/controls/management/FavoritesRenderer;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$2;

    iget-object v12, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-direct {v11, v12}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$2;-><init>(Lcom/android/systemui/controls/controller/ControlsController;)V

    invoke-direct {v10, v2, v11}, Lcom/android/systemui/controls/management/FavoritesRenderer;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .line 120
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/controls/management/AppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/FavoritesRenderer;Landroid/content/res/Resources;)V

    .line 129
    new-instance v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$3$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 138
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected onStop()V
    .locals 0

    .line 142
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleActivity;->onStop()V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->currentUserTracker:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$currentUserTracker$1;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
