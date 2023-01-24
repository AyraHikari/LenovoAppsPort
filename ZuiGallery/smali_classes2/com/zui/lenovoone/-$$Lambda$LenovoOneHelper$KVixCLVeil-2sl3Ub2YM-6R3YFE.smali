.class public final synthetic Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;

    invoke-direct {v0}, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;-><init>()V

    sput-object v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$KVixCLVeil-2sl3Ub2YM-6R3YFE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/zui/lenovoone/LenovoOneHelper;->lambda$doSend$1(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
