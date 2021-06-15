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
    value = "SMAP\nControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,590:1\n1517#2:591\n1588#2,3:592\n1190#2,4:595\n1819#2,2:599\n1162#2,2:601\n1190#2,4:603\n1579#2:607\n1819#2:608\n1820#2:610\n1580#2:611\n1819#2,2:612\n1819#2,2:614\n256#2,2:616\n221#2,2:618\n1819#2,2:622\n256#2,2:624\n1#3:609\n181#4,2:620\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/ControlsUiControllerImpl\n*L\n176#1:591\n176#1,3:592\n178#1,4:595\n230#1,2:599\n284#1,2:601\n284#1,4:603\n286#1:607\n286#1:608\n286#1:610\n286#1:611\n339#1,2:612\n405#1,2:614\n471#1,2:616\n485#1,2:618\n527#1,2:622\n556#1,2:624\n286#1:609\n504#1,2:620\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$Companion;

.field private static final EMPTY_COMPONENT:Landroid/content/ComponentName;

.field private static final EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;


# instance fields
.field private activityContext:Landroid/content/Context;

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

.field private final controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

.field private hidden:Z

.field private final iconCache:Lcom/android/systemui/controls/CustomIconCache;

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

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

    .line 95
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 96
    new-instance v2, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    sput-object v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/controls/CustomIconCache;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
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
            "Lcom/android/systemui/controls/ControlsMetricsLogger;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ")V"
        }
    .end annotation

    const-string v0, "controlsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

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

    const-string v0, "controlsMetricsLogger"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 78
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 79
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 80
    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 81
    iput-object p7, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 82
    iput-object p8, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 83
    iput-object p9, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 84
    iput-object p10, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->iconCache:Lcom/android/systemui/controls/CustomIconCache;

    .line 85
    iput-object p11, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 86
    iput-object p12, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 103
    sget-object p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 105
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 106
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 112
    new-instance p1, Landroid/view/ContextThemeWrapper;

    sget p3, Lcom/android/systemui/R$style;->Control_ListPopupWindow:I

    invoke-direct {p1, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popupThemedContext:Landroid/view/ContextThemeWrapper;

    .line 115
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

    .line 116
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$special$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Ljava/util/Comparator;

    .line 120
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Ljava/util/function/Consumer;

    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getControlViewsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getControlsById$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getEMPTY_STRUCTURE$cp()Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 1

    .line 73
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object v0
.end method

.method public static final synthetic access$getOnDismiss$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getParent$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic access$getPopupThemedContext$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Landroid/view/ContextThemeWrapper;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popupThemedContext:Landroid/view/ContextThemeWrapper;

    return-object p0
.end method

.method public static final synthetic access$getSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/StructureInfo;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object p0
.end method

.method public static final synthetic access$reload(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$setPopup$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    return-void
.end method

.method public static final synthetic access$setSelectedStructure$p(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    return-void
.end method

.method public static final synthetic access$showControlsView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showControlsView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showInitialSetupView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showInitialSetupView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$showSeedingView(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->showSeedingView(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$startEditingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startEditingActivity(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method public static final synthetic access$startFavoritingActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startFavoritingActivity(Lcom/android/systemui/controls/controller/StructureInfo;)V

    return-void
.end method

.method public static final synthetic access$startProviderSelectorActivity(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startProviderSelectorActivity()V

    return-void
.end method

.method public static final synthetic access$switchAppOrStructure(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->switchAppOrStructure(Lcom/android/systemui/controls/ui/SelectionItem;)V

    return-void
.end method

.method public static final synthetic access$updatePreferences(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 0

    .line 73
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

    .line 137
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private final createDropDown(Ljava/util/List;Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ")V"
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

    .line 340
    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->registerComponentIcon(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lcom/android/systemui/controls/ui/ItemAdapter;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$layout;->controls_spinner_item:I

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/controls/ui/ItemAdapter;-><init>(Landroid/content/Context;I)V

    .line 344
    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 345
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 343
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const-string v2, "parent"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    sget v4, Lcom/android/systemui/R$id;->app_or_structure_spinner:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v4, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 356
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$color;->control_spinner_dropdown:I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 360
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    sget p2, Lcom/android/systemui/R$id;->controls_header:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 365
    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$2;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createDropDown$2;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 364
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 352
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final createListView(Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 19

    move-object/from16 v0, p0

    .line 393
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 394
    sget v2, Lcom/android/systemui/R$layout;->controls_with_favorites:I

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    const-string v5, "parent"

    if-eqz v3, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 396
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    sget v3, Lcom/android/systemui/R$id;->controls_close:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 397
    new-instance v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createListView$1$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createListView$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 398
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->findMaxColumns()I

    move-result v2

    .line 403
    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v6, :cond_5

    sget v4, Lcom/android/systemui/R$id;->global_actions_controls_list:I

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewGroup;

    const-string v6, "inflater"

    .line 404
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 405
    iget-object v7, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v7}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v7

    .line 1819
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 406
    new-instance v9, Lcom/android/systemui/controls/ui/ControlKey;

    iget-object v10, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v10}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 407
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/controls/ui/ControlWithState;

    if-nez v8, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ne v10, v2, :cond_1

    .line 409
    invoke-direct {v0, v1, v4}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 412
    :cond_1
    sget v10, Lcom/android/systemui/R$layout;->controls_base_item:I

    .line 411
    invoke-virtual {v1, v10, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Landroid/view/ViewGroup;

    .line 413
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    new-instance v10, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getControlsController()Ldagger/Lazy;

    move-result-object v11

    invoke-interface {v11}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v11

    const-string v13, "controlsController.get()"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v11

    check-cast v13, Lcom/android/systemui/controls/controller/ControlsController;

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v14

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getBgExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v15

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object v16

    .line 420
    iget-object v11, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/controls/ui/SelectionItem;->getUid()I

    move-result v18

    move-object/from16 v17, v11

    move-object v11, v10

    .line 414
    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/controls/ui/ControlViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;I)V

    .line 423
    invoke-virtual {v10, v8, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindData(Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    .line 424
    iget-object v8, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 429
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, v2

    if-nez v1, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v1

    :goto_1
    if-lez v2, :cond_4

    .line 432
    new-instance v1, Landroid/widget/Space;

    iget-object v4, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    return-void

    .line 403
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 396
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 394
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final createMenu()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_menu_add:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 303
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_menu_edit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 305
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$layout;->controls_more_item:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/R$id;->controls_more:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 308
    new-instance v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createMenu$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "parent"

    .line 307
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final createRow(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    .line 550
    sget p0, Lcom/android/systemui/R$layout;->controls_row:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    .line 551
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method private final findMaxColumns()I
    .locals 5

    .line 442
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 443
    sget v0, Lcom/android/systemui/R$integer;->controls_max_columns:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 445
    sget v1, Lcom/android/systemui/R$integer;->controls_max_columns_adjust_below_width_dp:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 447
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 448
    sget v3, Lcom/android/systemui/R$dimen;->controls_max_columns_adjust_above_font_scale:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 449
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 451
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 452
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 454
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_1

    if-gt v3, v1, :cond_1

    .line 456
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

    .line 557
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

    .line 464
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    return-object p0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controls_component"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 468
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 469
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

    .line 472
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

    .line 471
    :cond_5
    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    if-nez v2, :cond_6

    .line 473
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/controls/controller/StructureInfo;

    :cond_6
    return-object v2
.end method

.method private final putIntentExtras(Landroid/content/Intent;Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 257
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

    .line 256
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "extra_structure"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const-string p2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private final reload(Landroid/view/ViewGroup;)V
    .locals 3

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 194
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 195
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    new-instance v1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    const-string p0, "listingCallback"

    .line 191
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
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ui/SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

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

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1191
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 284
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/SelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->allStructures:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1579
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 287
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/controls/ui/SelectionItem;

    if-nez v6, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1d

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/android/systemui/controls/ui/SelectionItem;->copy$default(Lcom/android/systemui/controls/ui/SelectionItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;IILjava/lang/Object;)Lcom/android/systemui/controls/ui/SelectionItem;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_1

    .line 1579
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->localeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->findSelectionItem(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectionItem;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/controls/ui/SelectionItem;

    .line 293
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectionItem;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-interface {p1, v2, v3}, Lcom/android/systemui/controls/ControlsMetricsLogger;->refreshBegin(IZ)V

    .line 295
    invoke-direct {p0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createListView(Lcom/android/systemui/controls/ui/SelectionItem;)V

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createDropDown(Ljava/util/List;Lcom/android/systemui/controls/ui/SelectionItem;)V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createMenu()V

    return-void

    :cond_5
    const-string p0, "allStructures"

    .line 286
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
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

    .line 220
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 221
    sget v1, Lcom/android/systemui/R$layout;->controls_no_favorites:I

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const-string v4, "parent"

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    sget v2, Lcom/android/systemui/R$id;->controls_no_favorites_group:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    .line 224
    new-instance v5, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showInitialSetupView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showInitialSetupView$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    sget v6, Lcom/android/systemui/R$id;->controls_subtitle:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 227
    iget-object v6, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->quick_controls_subtitle:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
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

    .line 231
    sget v3, Lcom/android/systemui/R$layout;->controls_icon:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/ImageView;

    .line 232
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/SelectionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 223
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 221
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

    .line 213
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 214
    sget v0, Lcom/android/systemui/R$layout;->controls_no_favorites:I

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const-string v3, "parent"

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 215
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    sget v0, Lcom/android/systemui/R$id;->controls_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 216
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->controls_seeding_in_progress:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 215
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final startActivity(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "extra_animate"

    const/4 v1, 0x1

    .line 269
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 272
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v2, "activityContext"

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    .line 274
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    new-array v1, v1, [Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private final startEditingActivity(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 243
    const-class v0, Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startTargetedActivity(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V

    return-void
.end method

.method private final startFavoritingActivity(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 1

    .line 239
    const-class v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startTargetedActivity(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V

    return-void
.end method

.method private final startProviderSelectorActivity()V
    .locals 3

    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-class v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p0, "activityContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final startTargetedActivity(Lcom/android/systemui/controls/controller/StructureInfo;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 247
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->putIntentExtras(Landroid/content/Intent;Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 249
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    return-void

    :cond_0
    const-string p0, "activityContext"

    .line 247
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final switchAppOrStructure(Lcom/android/systemui/controls/ui/SelectionItem;)V
    .locals 5

    .line 485
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

    .line 486
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

    .line 489
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 490
    iput-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 491
    invoke-direct {p0, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 492
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

    .line 485
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updatePreferences(Lcom/android/systemui/controls/controller/StructureInfo;)V
    .locals 2

    .line 477
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->EMPTY_STRUCTURE:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 479
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "controls_component"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 480
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "controls_structure"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 481
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public closeDialogs(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 498
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismissImmediate()V

    goto :goto_0

    .line 500
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :goto_0
    const/4 p1, 0x0

    .line 502
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    .line 504
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

    .line 505
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->dismiss()V

    goto :goto_1

    .line 507
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->closeDialogs()V

    return-void
.end method

.method public final getBgExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public final getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;
    .locals 0

    .line 81
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

    .line 75
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

    .line 79
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    return-object p0
.end method

.method public final getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public hide()V
    .locals 3

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 513
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->closeDialogs(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v0}, Lcom/android/systemui/controls/controller/ControlsController;->unsubscribe()V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 522
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->clearCache()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "listingCallback"

    .line 520
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "parent"

    .line 516
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    new-instance v0, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;

    invoke-direct {p2, p0, v0, p3}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlKey;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 7
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

    .line 526
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1819
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/controls/Control;

    .line 528
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    new-instance v3, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "c.getControlId()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/ControlWithState;

    if-nez v2, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onRefreshState() for id: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ControlsUiController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->iconCache:Lcom/android/systemui/controls/CustomIconCache;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "c.controlId"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v6}, Lcom/android/systemui/controls/CustomIconCache;->store(Landroid/content/ComponentName;Ljava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 531
    new-instance v3, Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v2

    invoke-direct {v3, p1, v2, v1}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    .line 532
    new-instance v2, Lcom/android/systemui/controls/ui/ControlKey;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v1}, Lcom/android/systemui/controls/ui/ControlKey;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-nez v1, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getUiExecutor()Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$1$1$1$1;

    invoke-direct {v4, v1, v3, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onRefreshState$1$1$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlWithState;Z)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ControlsUiController"

    const-string v1, "show()"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 160
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 161
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    .line 165
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    invoke-interface {p1, p3}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->setActivityContext(Landroid/content/Context;)V

    .line 167
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

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->loadPreference(Ljava/util/List;)Lcom/android/systemui/controls/controller/StructureInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 170
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Ljava/util/function/Consumer;

    invoke-interface {p1, v0}, Lcom/android/systemui/controls/controller/ControlsController;->addSeedingFavoritesCallback(Ljava/util/function/Consumer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    goto/16 :goto_2

    .line 172
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

    .line 174
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$2;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    goto :goto_2

    .line 172
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 176
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

    .line 177
    new-instance v1, Lcom/android/systemui/controls/ui/ControlWithState;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/StructureInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v1, v2, v0, p3}, Lcom/android/systemui/controls/ui/ControlWithState;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/Control;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
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

    .line 179
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

    .line 181
    :cond_4
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$5;-><init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createCallback(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 182
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedStructure:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-interface {p1, p2}, Lcom/android/systemui/controls/controller/ControlsController;->subscribeToFavorites(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 185
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

    .line 168
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method
