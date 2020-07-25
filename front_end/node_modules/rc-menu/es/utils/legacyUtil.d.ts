import { MotionType, TransitionNameType, OpenAnimation } from '../interface';
interface GetMotionProps {
    motion?: MotionType;
    openAnimation?: OpenAnimation;
    openTransitionName?: TransitionNameType;
    prefixCls?: string;
}
export declare function getMotion({ prefixCls, motion, openAnimation, openTransitionName, }: GetMotionProps): MotionType;
export {};
