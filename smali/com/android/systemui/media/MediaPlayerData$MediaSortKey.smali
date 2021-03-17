.class final Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaPlayerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSortKey"
.end annotation


# instance fields
.field private final data:Lcom/android/systemui/media/MediaData;

.field private final updateTime:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaData;J)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    .line 530
    iput-wide p2, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 528
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-object v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    iget-object v3, p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    iget-wide p0, p1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Lcom/android/systemui/media/MediaData;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    return-object p0
.end method

.method public final getUpdateTime()J
    .locals 2

    .line 530
    iget-wide v0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSortKey(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
