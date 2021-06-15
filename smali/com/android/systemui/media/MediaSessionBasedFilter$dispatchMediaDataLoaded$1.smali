.class final Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "MediaSessionBasedFilter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaSessionBasedFilter;->dispatchMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSessionBasedFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n1819#2,2:198\n*E\n*S KotlinDebug\n*F\n+ 1 MediaSessionBasedFilter.kt\ncom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1\n*L\n160#1,2:198\n*E\n"
.end annotation


# instance fields
.field final synthetic $info:Lcom/android/systemui/media/MediaData;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $oldKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    invoke-static {v0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$getListeners$p(Lcom/android/systemui/media/MediaSessionBasedFilter;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$dispatchMediaDataLoaded$1;->$info:Lcom/android/systemui/media/MediaData;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 160
    invoke-interface {v3, v1, v2, p0}, Lcom/android/systemui/media/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
