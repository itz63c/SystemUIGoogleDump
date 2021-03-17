.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleData-$$ExternalSyntheticLambda9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getLastActivity()J

    move-result-wide p0

    return-wide p0
.end method
