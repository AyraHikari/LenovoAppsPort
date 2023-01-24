.class public final synthetic Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;

    invoke-direct {v0}, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;-><init>()V

    sput-object v0, Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;->INSTANCE:Lcom/zui/lenovoone/-$$Lambda$LenovoOneHelper$JmN3ceI9HVMx3FZhdqlT-g3mXhA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/zui/lenovoone/LenovoOneHelper;->lambda$doSend$3(Ljava/lang/Throwable;)V

    return-void
.end method
