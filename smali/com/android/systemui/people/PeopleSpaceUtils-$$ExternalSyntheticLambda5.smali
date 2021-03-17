.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils-$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/app/people/ConversationChannel;

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->$r8$lambda$c-9XQzU74yeMmqD9R9bwyZoHcTY(Landroid/app/people/ConversationChannel;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    return-object p0
.end method
