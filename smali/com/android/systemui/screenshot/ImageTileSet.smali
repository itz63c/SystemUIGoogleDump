.class Lcom/android/systemui/screenshot/ImageTileSet;
.super Ljava/lang/Object;
.source "ImageTileSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mContentListeners:Lcom/android/internal/util/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry<",
            "Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;",
            "Lcom/android/systemui/screenshot/ImageTileSet;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mOnBoundsListeners:Lcom/android/internal/util/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry<",
            "*",
            "Lcom/android/systemui/screenshot/ImageTileSet;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/screenshot/ImageTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private notifyBoundsChanged(Landroid/graphics/Rect;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mOnBoundsListeners:Lcom/android/internal/util/CallbackRegistry;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyContentChanged()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addOnContentChangedListener(Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/internal/util/CallbackRegistry;

    new-instance v1, Lcom/android/systemui/screenshot/ImageTileSet$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ImageTileSet$2;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/CallbackRegistry;-><init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mContentListeners:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/CallbackRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method clear()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 214
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenshot/ImageTile;

    .line 216
    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTile;->close()V

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ImageTileSet;->notifyBoundsChanged(Landroid/graphics/Rect;)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->notifyContentChanged()V

    return-void
.end method

.method get(I)Lcom/android/systemui/screenshot/ImageTile;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/ImageTile;

    return-object p0
.end method

.method getBottom()I
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 145
    new-instance v0, Lcom/android/systemui/screenshot/TiledImageDrawable;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TiledImageDrawable;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;)V

    return-object v0
.end method

.method getHeight()I
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method getLeft()I
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method getTop()I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method getWidth()I
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method size()I
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method toBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ImageTileSet;->toBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method toBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exporting with bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageTileSet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/screenshot/ImageTileSet;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "Bitmap Export"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 176
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 178
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p0, p1}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
