.class public final Lcom/google/material/monet/ColorScheme$Companion;
.super Ljava/lang/Object;
.source "ColorScheme.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/material/monet/ColorScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorScheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorScheme.kt\ncom/google/material/monet/ColorScheme$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n979#2,2:124\n*E\n*S KotlinDebug\n*F\n+ 1 ColorScheme.kt\ncom/google/material/monet/ColorScheme$Companion\n*L\n108#1,2:124\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/material/monet/ColorScheme$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSeedColor(Landroid/app/WallpaperColors;)I
    .locals 1

    const-string p0, "wallpaperColors"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object p0

    .line 107
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 979
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance p1, Lcom/google/material/monet/ColorScheme$Companion$getSeedColor$$inlined$sortByDescending$1;

    invoke-direct {p1}, Lcom/google/material/monet/ColorScheme$Companion$getSeedColor$$inlined$sortByDescending$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 109
    :cond_0
    sget-object p1, Lcom/google/material/monet/ColorScheme$Companion$getSeedColor$2;->INSTANCE:Lcom/google/material/monet/ColorScheme$Companion$getSeedColor$2;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 115
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x1b6ef3

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "{\n                swatches.first().key\n            }"

    .line 117
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
