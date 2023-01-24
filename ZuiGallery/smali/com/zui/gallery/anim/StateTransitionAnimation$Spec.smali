.class public Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;
    }
.end annotation


# static fields
.field public static final ANIMATION_TYPE_ALPHA:I = 0x0

.field public static final ANIMATION_TYPE_MAX:I = 0x3

.field public static final ANIMATION_TYPE_SCALE:I = 0x1

.field public static final ANIMATION_TYPE_TRANSITION:I = 0x2

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FADE_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final FADE_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final INCOMING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final LEFT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final OUTGOING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_INCOMING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_PICK_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_PICK_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_SWITCH_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_SWITCH_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final RIGHT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

.field public static final TARGET_BACKGROUND:I = 0x1

.field public static final TARGET_CONTENT:I = 0x0

.field public static final TARGET_MAX:I = 0x3

.field public static final TARGET_OVERLAY:I = 0x2


# instance fields
.field public backgroundAlphaFrom:F

.field public backgroundAlphaTo:F

.field public backgroundScaleFrom:F

.field public backgroundScaleTo:F

.field public contentAlphaFrom:F

.field public contentAlphaTo:F

.field public contentScaleFrom:F

.field public contentScaleTo:F

.field public contentXFrom:F

.field public contentXTo:F

.field public duration:I

.field public interpolator:Landroid/view/animation/Interpolator;

.field public overlayAlphaFrom:F

.field public overlayAlphaTo:F

.field public overlayScaleFrom:F

.field public overlayScaleTo:F

.field public overlayXFrom:F

.field public overlayXTo:F

.field public specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

.field private type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 48
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 93
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 94
    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 95
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    const/4 v2, 0x0

    .line 96
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 97
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 98
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 99
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 100
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 101
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 102
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 104
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 105
    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v4, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 106
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 107
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 108
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 109
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 110
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 111
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 112
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 113
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 115
    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 116
    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 118
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->LEFT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 119
    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingLeft:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 120
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->LEFT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    const/16 v1, 0xc8

    .line 121
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    .line 123
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->RIGHT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 124
    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingRight:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 125
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->RIGHT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 128
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 129
    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 130
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    const/16 v1, 0x12c

    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    .line 131
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 132
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 133
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 134
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 136
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 137
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 139
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 140
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 142
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 143
    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v4, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 144
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    .line 145
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 146
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 148
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 149
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 151
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 152
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 153
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 154
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 158
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 159
    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v4, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 160
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 161
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 162
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 163
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 164
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    .line 166
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 167
    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v4, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 168
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    const v4, 0x3f4ccccd    # 0.8f

    .line 169
    iput v4, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 170
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 171
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 172
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 173
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    const/16 v4, 0x64

    .line 174
    iput v4, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    .line 177
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    .line 178
    sget-object v4, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v4, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 179
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    .line 180
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 181
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 183
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 184
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    const v1, 0x3e99999a    # 0.3f

    .line 186
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 187
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 189
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 190
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 192
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 193
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 196
    new-instance v1, Lcom/zui/gallery/anim/BezierInterpolator;

    const v4, 0x3e5c28f6    # 0.215f

    const v5, 0x3f1c28f6    # 0.61f

    const v6, 0x3eb5c28f    # 0.355f

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/zui/gallery/anim/BezierInterpolator;-><init>(FFFF)V

    iput-object v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    .line 198
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    const/16 v1, 0xfa

    .line 199
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    .line 200
    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 201
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 202
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 204
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    const v1, 0x3f333333    # 0.7f

    .line 205
    iput v1, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 207
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 208
    iput v3, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 210
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 211
    iput v2, v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14a

    .line 51
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->duration:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 53
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 54
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 55
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    iput v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 57
    iput v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 58
    iput v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 59
    iput v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 60
    iput v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentXFrom:F

    .line 61
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->contentXTo:F

    .line 62
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 63
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 64
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 65
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 66
    iput v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayXFrom:F

    .line 67
    iput v1, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->overlayXTo:F

    .line 69
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specDurations:[[Lcom/zui/gallery/anim/StateTransitionAnimation$Spec$SpecDuration;

    .line 90
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->specForTransition(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;)Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->type:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    return-object p0
.end method

.method private static specForTransition(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;)Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;
    .locals 1

    .line 217
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$1;->$SwitchMap$com$zui$gallery$anim$StateTransitionAnimation$Transition:[I

    invoke-virtual {p0}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :pswitch_0
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 240
    :pswitch_1
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_PICK_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 237
    :pswitch_2
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 235
    :pswitch_3
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->FADE_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 232
    :pswitch_4
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_OUT:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 230
    :pswitch_5
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_SWITCH_IN:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 227
    :pswitch_6
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->RIGHT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 225
    :pswitch_7
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->LEFT_SLIDING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 223
    :pswitch_8
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 221
    :pswitch_9
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 219
    :pswitch_a
    sget-object p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/zui/gallery/anim/StateTransitionAnimation$Spec;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
