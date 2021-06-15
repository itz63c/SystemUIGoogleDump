.class final Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "MediaSessionBasedFilter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaSessionBasedFilter;->dispatchSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSessionBasedFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n1819#2,2:198\n*E\n*S KotlinDebug\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1\n*L\n172#1,2:198\n*E\n"
.end annotation


# instance fields
.field final synthetic $info:Landroid/app/smartspace/SmartspaceTarget;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;->$info:Landroid/app/smartspace/SmartspaceTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getListeners$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchSmartspaceMediaDataLoaded$1;->$info:Landroid/app/smartspace/SmartspaceTarget;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 172
    invoke-interface {v2, v1, p0}, Lcom/android/systemui/media/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    goto :goto_0

    :cond_0
    return-void
.end method
