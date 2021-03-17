.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;
.super Ljava/lang/Object;
.source "ControlsUiControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/ControlsUiController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,580:1\n1517#2:581\n1588#2,3:582\n1190#2,4:585\n1819#2,2:589\n1819#2,2:591\n1162#2,2:593\n1190#2,4:595\n1579#2:599\n1819#2:600\n1820#2:602\n1580#2:603\n1819#2,2:604\n256#2,2:606\n221#2,2:608\n1819#2,2:612\n256#2,2:614\n1#3:601\n181#4,2:610\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl\n*L\n170#1:581\n170#1,3:582\n172#1,4:585\n224#1,2:589\n329#1,2:591\n333#1,2:593\n333#1,4:595\n335#1:599\n335#1:600\n335#1:602\n335#1:603\n399#1,2:604\n463#1,2:606\n477#1,2:608\n518#1,2:612\n547#1,2:614\n335#1:601\n496#1,2:610\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$Companion;

.field private static final EMPTY_COMPONENT:Landroid/content/ComponentName;

.field private static final EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private allStructures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final collator:Ljava/text/Collator;

.field private final context:Landroid/content/Context;

.field private final controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

.field private final controlViewsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/controls/ui/ControlKey;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/controls/ui/ControlKey;",
            "Lcom/android/systemui/controls/ui/ControlWithState;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsListingController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;"
        }
    .end annotation
.end field

.field private hidden:Z

.field private final iconCache:Lcom/android/systemui/controls/CustomIconCache;

.field private listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

.field private final localeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private onDismiss:Ljava/lang/Runnable;

.field private final onSeedingComplete:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Landroid/view/ViewGroup;

.field private popup:Landroid/widget/ListPopupWindow;

.field private final popupThemedContext:Landroid/view/ContextThemeWrapper;

.field private retainCache:Z

.field private selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->Companion:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$Companion;

    .line 89
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 90
    new-instance v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    sput-object v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/controls/CustomIconCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/systemui/controls/ui/ControlActionCoordinator;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/controls/CustomIconCache;",
            ")V"
        }
    .end annotation

    const-string v0, "controlsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsListingController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlActionCoordinator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeController"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 75
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 76
    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 77
    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 78
    iput-object p8, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 79
    iput-object p9, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 80
    iput-object p10, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->iconCache:Lcom/android/systemui/controls/CustomIconCache;

    .line 97
    sget-object p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 99
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 100
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 106
    new-instance p1, Landroid/view/ContextThemeWrapper;

    sget p3, Lcom/android/systemui/R$style;->Control_ListPopupWindow:I

    invoke-direct {p1, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popupThemedContext:Landroid/view/ContextThemeWrapper;

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->collator:Ljava/text/Collator;

    const-string p2, "collator"

    .line 110
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Ljava/util/Comparator;

    .line 114
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Ljava/util/function/Consumer;

    return-void
.end method

.method public static final synthetic access$getControlViewsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getControlsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getEMPTY_STRUCTURE$cp()Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object v0
.end method

.method public static final synthetic access$getOnDismiss$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getParent$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic access$getPopupThemedContext$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ContextThemeWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popupThemedContext:Landroid/view/ContextThemeWrapper;

    return-object p0
.end method

.method public static final synthetic access$getSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object p0
.end method

.method public static final synthetic access$getShadeController$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method public static final synthetic access$reload(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$setPopup$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    return-void
.end method

.method public static final synthetic access$setSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    return-void
.end method

.method public static final synthetic access$showControlsView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showControlsView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showInitialSetupView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showInitialSetupView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showSeedingView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showSeedingView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$startEditingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startEditingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method public static final synthetic access$startFavoritingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startFavoritingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method public static final synthetic access$startProviderSelectorActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startProviderSelectorActivity(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$switchAppOrStructure(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->switchAppOrStructure(Lcom/android/systemui/controls/ui/SelectionItem;)V

    return-void
.end method

.method public static final synthetic access$updatePreferences(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method private final createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private final createDropDown(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 330
    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->registerComponentIcon(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1162
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1163
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1190
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1191
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 333
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 334
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1579
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 336
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/ui/SelectionItem;

    if-nez v6, :cond_3

    move-object v4, v3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/controls/ui/SelectionItem;->copy$default(Lcom/android/systemui/controls/ui/SelectionItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;ILjava/lang/Object;)Lcom/android/systemui/controls/ui/SelectionItem;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_2

    .line 1579
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 340
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->findSelectionItem(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectionItem;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 342
    :cond_5
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Lcom/android/systemui/controls/ui/ItemAdapter;

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$layout;->controls_spinner_item:I

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/controls/ui/ItemAdapter;-><init>(Landroid/content/Context;I)V

    .line 343
    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 344
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 342
    iput-object v4, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 351
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const-string v5, "parent"

    if-eqz v4, :cond_8

    sget v6, Lcom/android/systemui/R$id;->app_or_structure_spinner:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 352
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v6, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 355
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/systemui/R$color;->control_spinner_dropdown:I

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 358
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 359
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    sget v1, Lcom/android/systemui/R$id;->controls_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 364
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$3;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 363
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 351
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    const-string p0, "allStructures"

    .line 335
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final createListView()V
    .locals 15

    .line 392
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 393
    sget v1, Lcom/android/systemui/R$layout;->controls_with_favorites:I

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const-string v4, "parent"

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->findMaxColumns()I

    move-result v1

    .line 397
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    sget v3, Lcom/android/systemui/R$id;->global_actions_controls_list:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    const-string v4, "inflater"

    .line 398
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 399
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v5

    .line 1819
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 400
    new-instance v8, Lcom/android/systemui/controls/ui/ControlKey;

    iget-object v9, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v9}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 401
    iget-object v6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/ui/ControlWithState;

    if-nez v6, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ne v9, v1, :cond_1

    .line 403
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 406
    :cond_1
    sget v9, Lcom/android/systemui/R$layout;->controls_base_item:I

    .line 405
    invoke-virtual {v0, v9, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v10, v7

    check-cast v10, Landroid/view/ViewGroup;

    .line 407
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    new-instance v7, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getControlsController()Ldagger/Lazy;

    move-result-object v9

    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    const-string v11, "controlsController.get()"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/controls/controller/ControlsController;

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v12

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getBgExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v13

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object v14

    move-object v9, v7

    .line 408
    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;)V

    .line 415
    invoke-virtual {v7, v6}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindData(Lcom/android/systemui/controls/ui/ControlWithState;)V

    .line 416
    iget-object v6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    move v1, v7

    goto :goto_1

    :cond_3
    sub-int/2addr v1, v0

    :goto_1
    if-lez v1, :cond_4

    .line 424
    new-instance v0, Landroid/widget/Space;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    return-void

    .line 397
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final createMenu()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_menu_add:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 293
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_menu_edit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 295
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$layout;->controls_more_item:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/R$id;->controls_more:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 298
    new-instance v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "parent"

    .line 297
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 541
    sget p0, Lcom/android/systemui/R$layout;->controls_row:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    .line 542
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method private final findMaxColumns()I
    .locals 5

    .line 434
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 435
    sget v0, Lcom/android/systemui/R$integer;->controls_max_columns:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 437
    sget v1, Lcom/android/systemui/R$integer;->controls_max_columns_adjust_below_width_dp:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 439
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 440
    sget v3, Lcom/android/systemui/R$dimen;->controls_max_columns_adjust_above_font_scale:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 441
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 443
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 444
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 446
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_1

    if-gt v3, v1, :cond_1

    .line 448
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private final findSelectionItem(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectionItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)",
            "Lcom/android/systemui/controls/ui/SelectionItem;"
        }
    .end annotation

    .line 256
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 548
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SelectionItem;->getStructure()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 257
    :goto_1
    check-cast p2, Lcom/android/systemui/controls/ui/SelectionItem;

    return-object p2
.end method

.method private final loadPreference(Ljava/util/List;)Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;)",
            "Lcom/android/systemui/controls/controller/StructureInfo;"
        }
    .end annotation

    .line 456
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object p0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_component"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 460
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 461
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_structure"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 464
    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    if-eqz v5, :cond_3

    move-object v2, v3

    .line 463
    :cond_5
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    if-nez v2, :cond_6

    .line 465
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    :cond_6
    return-object v2
.end method

.method private final putIntentExtras(Landroid/content/Intent;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getControlsListingController()Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/ControlsListingController;

    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/controls/management/ControlsListingController;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "extra_app_label"

    .line 252
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "extra_structure"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 255
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const-string p2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private final reload(Landroid/view/ViewGroup;)V
    .locals 3

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 188
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    const-string p0, "listingCallback"

    .line 185
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final showControlsView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createListView()V

    .line 286
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createDropDown(Ljava/util/List;)V

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createMenu()V

    return-void
.end method

.method private final showInitialSetupView(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 215
    sget v1, Lcom/android/systemui/R$layout;->controls_no_favorites:I

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const-string v4, "parent"

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 217
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    sget v2, Lcom/android/systemui/R$id;->controls_no_favorites_group:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    .line 218
    new-instance v5, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showInitialSetupView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showInitialSetupView$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    sget v6, Lcom/android/systemui/R$id;->controls_subtitle:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 221
    iget-object v6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->quick_controls_subtitle:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    sget v3, Lcom/android/systemui/R$id;->controls_icon_row:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 225
    sget v3, Lcom/android/systemui/R$layout;->controls_icon:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/ImageView;

    .line 226
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void

    .line 223
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 220
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final showSeedingView(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 208
    sget v0, Lcom/android/systemui/R$layout;->controls_no_favorites:I

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const-string v3, "parent"

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 209
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/systemui/R$id;->controls_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 210
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->controls_seeding_in_progress:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 209
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "extra_animate"

    const/4 v1, 0x1

    .line 268
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->getStartedFromGlobalActions()Z

    move-result v0

    const-string v2, "back_to_global_actions"

    .line 269
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$startActivity$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$startActivity$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v3, v2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void

    :cond_0
    const-string p0, "onDismiss"

    .line 273
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final startEditingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 237
    const-class v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startTargetedActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V

    return-void
.end method

.method private final startFavoritingActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 233
    const-class v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startTargetedActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V

    return-void
.end method

.method private final startProviderSelectorActivity(Landroid/content/Context;)V
    .locals 2

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final startTargetedActivity(Landroid/content/Context;Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x14000000

    .line 242
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->putIntentExtras(Landroid/content/Intent;Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    return-void
.end method

.method private final switchAppOrStructure(Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 5

    .line 477
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 221
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 478
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectionItem;->getStructure()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    .line 481
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 482
    iput-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 483
    invoke-direct {p0, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 484
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void

    .line 222
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "allStructures"

    .line 477
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 2

    .line 469
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 471
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "controls_component"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 472
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "controls_structure"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 473
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public closeDialogs(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 490
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismissImmediate()V

    goto :goto_0

    .line 492
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :goto_0
    const/4 p1, 0x0

    .line 494
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    .line 496
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 181
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 497
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->dismiss()V

    goto :goto_1

    .line 499
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->closeDialogs()V

    return-void
.end method

.method public final getBgExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public final getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    return-object p0
.end method

.method public final getControlsController()Ldagger/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    return-object p0
.end method

.method public final getControlsListingController()Ldagger/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    return-object p0
.end method

.method public final getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public hide()V
    .locals 3

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->closeDialogs(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 514
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->clearCache()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "listingCallback"

    .line 512
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "parent"

    .line 508
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    new-instance v0, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;

    invoke-direct {p2, p0, v0, p3}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlKey;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1819
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/Control;

    .line 519
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    new-instance v2, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-virtual {v0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "c.getControlId()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/ControlWithState;

    if-nez v1, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {v0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onRefreshState() for id: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ControlsUiController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->iconCache:Lcom/android/systemui/controls/CustomIconCache;

    invoke-virtual {v0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "c.controlId"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/systemui/controls/CustomIconCache;->store(Landroid/content/ComponentName;Ljava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 522
    new-instance v2, Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-direct {v2, p1, v1, v0}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 523
    new-instance v1, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-virtual {v0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$1$1$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$1$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlKey;Lcom/android/systemui/controls/ui/ControlWithState;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Z)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ControlsUiController"

    const-string v1, "show()"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 155
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    .line 159
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {p1, p3}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->setStartedFromGlobalActions(Z)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController;->getFavorites()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    const-string p2, "allStructures"

    const/4 p3, 0x0

    if-eqz p1, :cond_6

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->loadPreference(Ljava/util/List;)Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 164
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Ljava/util/function/Consumer;

    invoke-interface {p1, v0}, Lcom/android/systemui/controls/controller/ControlsController;->addSeedingFavoritesCallback(Ljava/util/function/Consumer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    goto/16 :goto_2

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_2

    .line 168
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    goto :goto_2

    .line 166
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object p1

    .line 1517
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1589
    check-cast v0, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 171
    new-instance v1, Lcom/android/systemui/controls/ui/ControlWithState;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v1, v2, v0, p3}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 1190
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1191
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/controls/ui/ControlWithState;

    .line 173
    new-instance v2, Lcom/android/systemui/controls/ui/ControlKey;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 175
    :cond_4
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 176
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-interface {p1, p2}, Lcom/android/systemui/controls/controller/ControlsController;->subscribeToFavorites(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 179
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz p0, :cond_5

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p0, "listingCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 162
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method
