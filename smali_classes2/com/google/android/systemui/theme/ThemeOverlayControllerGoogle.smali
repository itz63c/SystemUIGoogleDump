.class public final Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;
.super Lcom/android/systemui/theme/ThemeOverlayController;
.source "ThemeOverlayControllerGoogle.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeOverlayControllerGoogle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeOverlayControllerGoogle.kt\ncom/google/android/systemui/theme/ThemeOverlayControllerGoogle\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,122:1\n11328#2:123\n11663#2,3:124\n11328#2:127\n11663#2,3:128\n11328#2:131\n11663#2,3:132\n11328#2:135\n11663#2,3:136\n*E\n*S KotlinDebug\n*F\n+ 1 ThemeOverlayControllerGoogle.kt\ncom/google/android/systemui/theme/ThemeOverlayControllerGoogle\n*L\n81#1:123\n81#1,3:124\n111#1:127\n111#1,3:128\n114#1:131\n114#1,3:132\n117#1:135\n117#1,3:136\n*E\n"
.end annotation


# instance fields
.field private neutralColors:[I

.field private primaryColors:[I

.field private secondaryColors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeOverlayApplier"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secureSettings"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wallpaperManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/theme/ThemeOverlayController;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 46
    iput-object p2, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->primaryColors:[I

    new-array p2, p1, [I

    .line 47
    iput-object p2, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->secondaryColors:[I

    new-array p1, p1, [I

    .line 48
    iput-object p1, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->neutralColors:[I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/theme/ThemeOverlayController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->primaryColors:[I

    .line 11328
    new-instance v0, Ljava/util/ArrayList;

    array-length p3, p1

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length p3, p1

    const/4 v9, 0x0

    move v1, v9

    :goto_0
    const-string v10, "#"

    if-ge v1, p3, :cond_0

    aget v2, p1, v1

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    .line 112
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "primaryColors: "

    .line 113
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->secondaryColors:[I

    .line 11328
    new-instance v0, Ljava/util/ArrayList;

    array-length p3, p1

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length p3, p1

    move v1, v9

    :goto_1
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    .line 115
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "secondaryColors: "

    .line 116
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->neutralColors:[I

    .line 11328
    new-instance v0, Ljava/util/ArrayList;

    array-length p1, p0

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length p1, p0

    :goto_2
    if-ge v9, p1, :cond_2

    aget p3, p0, v9

    .line 117
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v10, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    .line 118
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "neutralColors: "

    .line 119
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "ThemeOverlayControllerGoogle: yes"

    .line 120
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getAccentColor(Landroid/app/WallpaperColors;)I
    .locals 1

    const-string v0, "wallpaperColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController;->getAccentColor(Landroid/app/WallpaperColors;)I

    move-result p0

    return p0
.end method

.method protected getDominantColor(Landroid/app/WallpaperColors;)I
    .locals 1

    const-string v0, "wallpaperColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController;->getDominantColor(Landroid/app/WallpaperColors;)I

    move-result p0

    return p0
.end method

.method protected getOverlay(II)Landroid/content/om/FabricatedOverlay;
    .locals 7

    .line 68
    new-instance v0, Lcom/google/material/monet/colorscience/CAM16Color;

    invoke-direct {v0, p1}, Lcom/google/material/monet/colorscience/CAM16Color;-><init>(I)V

    iget-wide v0, v0, Lcom/google/material/monet/colorscience/CAM16Color;->h:D

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 81
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/material/monet/ColorShades;->shadesOf(DD)[I

    move-result-object v0

    const-string v1, "shadesOf(hue, chroma)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    const/high16 v6, -0x1000000

    or-int/2addr v5, v6

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    if-eqz p2, :cond_4

    if-eq p2, p1, :cond_3

    .line 93
    iput-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->neutralColors:[I

    const-string p0, "neutral"

    goto :goto_2

    .line 85
    :cond_3
    iput-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->secondaryColors:[I

    const-string p0, "secondary"

    goto :goto_2

    .line 89
    :cond_4
    iput-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->primaryColors:[I

    const-string p0, "primary"

    .line 99
    :goto_2
    new-instance p2, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v1, "com.android.systemui"

    const-string v2, "android"

    invoke-direct {p2, v1, p0, v2}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1c

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:color/system_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_50"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget v3, v0, v3

    invoke-virtual {p2, v2, v1, v3}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    :goto_3
    add-int/lit8 v2, p1, 0x1

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget p1, v0, p1

    invoke-virtual {p2, v3, v1, p1}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    const/16 p1, 0x9

    if-le v2, p1, :cond_5

    .line 106
    invoke-virtual {p2}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object p0

    return-object p0

    :cond_5
    move p1, v2

    goto :goto_3
.end method
